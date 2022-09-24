
<div class="container">

    <AnimateIntoView startStyle="transform: translateY(50px);" once>
        <div class="form-container">
                <h4 class="mdc-typography--headline4">Send me an email</h4>
            <TextField
                invalid={!subjectField.valid}
                bind:value={subjectField.value}
                label="Subject"
                data-fieldInfo={subjectField}
                class="focus-event form-center"
                input$maxlength={subjectField.max}
                on:focus={() => {validateOnFocus(subjectField)}}
            >
                <HelperText slot="helper" class="helper-text" persistent>{subjectField.helperText}</HelperText>
            </TextField>

            <TextField
                textarea bind:value={bodyField.value}
                label="Content"
                data-fieldInfo={bodyField}
                class="focus-event form-center"
                invalid={!bodyField.valid}
                input$maxlength={bodyField.max}
                on:focus={() => {validateOnFocus(bodyField)}}
            >
                <CharacterCounter slot="internalCounter">0 / {bodyField.max}</CharacterCounter>
                <HelperText slot="helper" class="helper-text" persistent>{bodyField.helperText}</HelperText>
            </TextField>
            <Button color="primary" variant="outlined" class="form-submit" on:click={sendEmail}>
                <Label>Send</Label>
            </Button>
        </div>
    </AnimateIntoView>

    
    {#if additionalContacts}
        <div class="contact">
            <h4 class="mdc-typography--subtitle1">You can also find me on...</h4>
            <List class="additional-contacts" nonInteractive>
                {#each additionalContacts as contact}

                        <Item>
                            {#if contact.icon}
                                <Graphic style={`background-image: url(${contact.icon}); background-size: cover;`} />
                            {/if}
                            <Text>
                                <PrimaryText>
                                    {#if contact.url}
                                        <a target="_blank" href={contact.url?.toString()}>{contact.platform}</a>
                                    {:else}
                                        {contact.platform}
                                    {/if}
                                </PrimaryText>
                                <SecondaryText>{contact.description}</SecondaryText>
                            </Text>
                        </Item>

                {/each}
            </List>
        </div>
    {/if}

</div>


<script lang="ts">
    import TextField from "@smui/textfield";
    import CharacterCounter from '@smui/textfield/character-counter';
    import HelperText from '@smui/textfield/helper-text';
    import Button, { Label } from '@smui/button';
    import List, { Item, Graphic, Text, PrimaryText, SecondaryText } from "@smui/list";

    import AnimateIntoView from "$lib/components/AnimateIntoView.svelte";

    interface IContact {
        platform: string,
        url?: URL,
        description?: string,
        icon?: string
    };

    interface IFieldInfo {
        value: string,
        max: number,
        valid: boolean,
        helperText: string
    }

    export let additionalContacts: IContact[] | undefined = undefined;
    export let email: string;


    const subjectField: IFieldInfo = {
        value: "",
        max: 400,
        valid: true,
        helperText: ""
    }

    const bodyField: IFieldInfo = {
        value: "",
        max: 50,
        valid: true,
        helperText: ""
    }

    const validateOnFocus = (field: IFieldInfo) => {
        field.valid = true;
        field.helperText = "";
    }


    const sendEmail = (): void => {
        
        if (!subjectField.value || subjectField.value.length > subjectField.max) {
            subjectField.valid = false;
            subjectField.helperText = "You must provide subject and it must be under 50 characters!"
        } else {
            subjectField.helperText = ""
        };

        if (!bodyField.value || bodyField.value.length > bodyField.max) {
            bodyField.valid = false;
            bodyField.helperText = "You must provide body of email and it must be under 400 characters!"
        } else {
            bodyField.helperText = "";
        };

        if (subjectField.valid && bodyField.valid) {
            window.location.href = `mailto:${email}?subject=${subjectField.value}?body=${bodyField.value}`;
        }
    };
</script>


<style lang="scss">

    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 5px;
    }

    .form-container {
        width: 50%;
        
        h4 {
            margin-bottom: 0;
        }

        :global(.form-center) {
            width: 100%;
            margin: 10px;
        }

        :global(.form-submit) {
            margin: 10px;
        }

        :global(.helper-text) {
            margin: 0 10px;
            margin-top: -5px;
        }
    }

    :global(.additional-contacts) {
        display: flex;
    }

    @media only screen and (max-width: 600px) {
        .form-container {
            width: 100%;
        }
    }

</style>
