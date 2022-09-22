interface IKnowledgeData {
    title?: string,
    description?: string,
    logo?: string,
    elevationClass?: string,
    imageStyle?: string
}


const data: Array<IKnowledgeData> = [
    {
        title: "Django",
        description: `
            Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design.
            Knowledge of Django Rest Framework for building web APIs that follow JSON API SPECIFICATION <p>aa</p>.
        `,
        logo: "/Portfolio/django.png",
        elevationClass: "django",
        imageStyle: "border-radius: 50%"
    }, {
        title: "Godot",
        description: "Godot Engine is a feature-packed, cross-platform game engine to create 2D and 3D games from a unified interface.",
        logo: "/Portfolio/godot.png",
        elevationClass: "godot",
        imageStyle: "border-radius: 50%"
    }
]

export default data;