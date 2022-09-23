

<div class="container">

    <Accordion>

        {#each projects as project, i}

            <Panel bind:open={openPanels[i]}>
                <Header>
                    {project.name}
                    <IconButton slot="icon" toggle pressed={openPanels[i]}>
                        <Icon class="material-icons" on>expand_less</Icon>
                        <Icon class="material-icons">expand_more</Icon>
                      </IconButton>
                </Header>
                <Content>
                    {#if project.description}
                        <p class="mdc-typography--body1">{project.description}</p>
                    {/if}

                    <a href={project.url.toString()} target="blank">Visit project page.</a>
                </Content>
            </Panel>

        {/each}
    
    </Accordion>

</div>



<script lang="ts">
    import Accordion, { Panel, Header, Content } from '@smui-extra/accordion';
    import IconButton, { Icon } from '@smui/icon-button';


    interface IProject {
        name: string,
        description?: string,
        url: URL
    }

    const projects: IProject[] = [
        {
            name: "MTA RPG Gamemode",
            description: "RPG Gamemode for Multi Theft Auto: San Andreas.",
            url: new URL("https://github.com/DzIGIBAUER/mta_rpg")
        }
    ]

    const openPanels: {[key: number]: boolean} = {};
</script>
