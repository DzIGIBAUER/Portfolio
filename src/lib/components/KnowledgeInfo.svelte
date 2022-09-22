

<div class="knowledge-container">
    <LayoutGrid>

        {#each knowledgeData as data}

            <Cell spanDevices={{ desktop: 4, phone: 12}} style="padding: 10px">
                <KnowledgeDetails {...data}>
                    
                    <div class="additional-info">
                        {#if data.title == "Django"}
                            <p class="mdc-typohraphy--body2">
                                Knowledge of <strong>Django Rest Framework</strong> for building web APIs that
                                allow for authentication with JWT,
                                follow <a target="bank" href="https://jsonapi.org/">JSON API</a> specification and more.
                            </p>
                        

                        {:else if data.title == "Godot"}
                            <p class="mdc-typohraphy--body2">Working in Godot with both standard(GDSript) and mono(C#) version.</p>
                        
                        {:else if data.title == "Svelte"}
                            
                        <p class="mdc-typohraphy--body2">
                            Working with <a target="bank" href="https://sveltematerialui.com/">Svelte Material UI</a> to bring Material Desing to our websites.
                        </p>
                        
                        <p class="mdc-typohraphy--body2">
                            Using <a target="blank" href="https://kit.svelte.dev/">Svelte Kit</a> an application framework powered by Svelte.
                        </p>

                        {/if}

                    </div>

                </KnowledgeDetails>
            </Cell>

        {/each}

    </LayoutGrid>
</div>


<script lang="ts">
    import LayoutGrid, { Cell } from "@smui/layout-grid";

    import KnowledgeDetails from "$lib/components/KnowledgeDetails.svelte";

    interface IKnowledgeData {
        title?: string,
        description?: string,
        logo?: string,
        elevationClass?: string,
        imageStyle?: string
    }

    const knowledgeData: Array<IKnowledgeData> = [
        {
            title: "Django",
            description: "Django is a high-level Python web framework that encourages rapid development and clean, pragmatic design.",
            logo: "/Portfolio/django.png",
            elevationClass: "django",
            imageStyle: "border-radius: 50%"
        }, {
            title: "Svelte",
            description: "Svelte is a radical new approach to building user interfaces. Whereas traditional frameworks like React and Vue do the bulk of their work in the browser, Svelte shifts that work into a compile step that happens when you build your app.",
            logo: "Portfolio/svelte.png",
            elevationClass: "svelte"
        }, {
            title: "React",
            description: "A JavaScript library for building user interfaces.",
            logo: "Portfolio/react.png",
            elevationClass: "react"
        }, {
            title: "Godot",
            description: "Godot Engine is a feature-packed, cross-platform game engine to create 2D and 3D games from a unified interface.",
            logo: "/Portfolio/godot.png",
            elevationClass: "godot",
            imageStyle: "border-radius: 50%"
        }
    ]
</script>

<style>
    .additional-info {
        padding-top: 15px;
    }
</style>