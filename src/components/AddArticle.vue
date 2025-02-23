<template>
    <div>
        <h2>Add New Article</h2>
        <form @submit.prevent="addArticle">
            <input v-model="title" placeholder="Article Title" required />
            <textarea v-model="content" placeholder="Article Content" required></textarea>
            <button type="submit">Add Article</button>
        </form>
    </div>
</template>

<script>
    export default {
        name: 'AddArticle',
        data() {
            return {
                title: '',
                content: ''
            };
        },
        methods: {
            addArticle() {
                const newArticle = {
                    id: Date.now(),
                    title: this.title,
                    content: this.content
                };
                this.$emit('add-article', newArticle);
                this.title = '';
                this.content = '';
            }
        }
    };
</script>

<style>
form {
  display: flex;
  flex-direction: column;
}

input,
textarea {
  margin-bottom: 1rem;
}

button {
  align-self: flex-start;
}
</style>