interface IKnowledgeData {
    title?: string,
    content?: string,
    logo?: string,
    banner?: string,
    elevationClass?: string,
    imageStyle?: string
}


const data: Array<IKnowledgeData> = [
    {
        title: "Django",
        content: "Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of web development, so you can focus on writing your app without needing to reinvent the wheel.",
        logo: "/Portfolio/django.png",
        elevationClass: "django",
        imageStyle: "border-radius: 50%"
    }, {
        content: "Django REST framework is a powerful and flexible toolkit for building Web APIs. Great for integration with SPAs.",
        banner: "Portfolio/django-rest-framework.png",
        elevationClass: "django-rest-framework"
    }, {
        title: "Godot",
        content: "Godot Engine is a feature-packed, cross-platform game engine to create 2D and 3D games from a unified interface. It provides a comprehensive set of common tools, so that users can focus on making games without having to reinvent the wheel. Games can be exported with one click to a number of platforms, including the major desktop platforms (Linux, macOS, Windows), mobile platforms (Android, iOS), as well as Web-based platforms and consoles.",
        logo: "/Portfolio/godot.png",
        elevationClass: "godot",
        imageStyle: "border-radius: 50%"
    }
]

export default data;