
<div class="intro-content">
    
    <Paper color="primary" variant="unelevated" style="background-color: var(--mdc-theme-surface)" >
        <LayoutGrid>
            <Cell spanDevices={{ desktop: 3, phone: 12 }}>
                <div class="centered">
                    <img src="{base}/me.png" class="elevation default" alt="Miloš Kožović" />
                </div>
            </Cell>
            <Cell span={5}>
                <Content>
                    <h1 class="mdc-typography--headline4">Miloš Kožović<h1>
                    <p class="mdc-typography--body1">Machine technician for computer control (CNC) and software developer based in Serbia.</p>
                    <p class="mdc-typography--body1">Interested in web and game development.</p>
                </Content>
            </Cell>
        </LayoutGrid>
    </Paper>
    
</div>



<script>
    import Paper, { Title, Content } from "@smui/paper";
    import LayoutGrid, { Cell } from "@smui/layout-grid";

    import { base } from "$app/paths";
</script>


<style lang="scss">

    .intro-content {
        padding: 20px;
    }

    .centered {
        text-align: center;
    }

    .centered > img {
        display: block;
        margin-left: auto;
        margin-right: auto;

        width: 175px;
        border-radius: 50%;
    }
</style>
