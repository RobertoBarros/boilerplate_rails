class SidebarLinkComponent < ViewComponent::Base
  BASE_CLASSES = "group flex gap-x-3 rounded-md p-2 text-sm font-semibold leading-6"
  CURRENT_CLASSES = "bg-gray-50 text-indigo-600"
  DEFAULT_CLASSES = "text-gray-700 hover:text-indigo-600 hover:bg-gray-50"

  def initialize(path:, icon:, title:, selected:)
    @path = path
    @icon = icon_tag(icon, selected)
    @title = title
    @selected = selected
  end

  def link_classes
    class_names(BASE_CLASSES, @selected ? CURRENT_CLASSES : DEFAULT_CLASSES)
  end

  def icon_tag(name, selected)
    text_class = selected ? "text-indigo-600" : "text-gray-400"
    case name
    when :home
      tag.svg(class: "#{text_class} h-6 w-6 shrink-0 group-hover:text-indigo-600", fill: "none", viewBox: "0 0 24 24", stroke_width: "1.5", stroke: "currentColor", aria_hidden: "true") do
        tag.path(stroke_linecap: "round", stroke_linejoin: "round", d: "M2.25 12l8.954-8.955c.44-.439 1.152-.439 1.591 0L21.75 12M4.5 9.75v10.125c0 .621.504 1.125 1.125 1.125H9.75v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21h4.125c.621 0 1.125-.504 1.125-1.125V9.75M8.25 21h8.25")
      end
    when :users
      tag.svg(class: "#{text_class} h-6 w-6 shrink-0 group-hover:text-indigo-600", fill: "none", viewBox: "0 0 24 24", stroke_width: "1.5", stroke: "currentColor", aria_hidden: "true") do
        tag.path(stroke_linecap: "round", stroke_linejoin: "round", d: "M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z")
      end
    else
      name
    end
  end
end
