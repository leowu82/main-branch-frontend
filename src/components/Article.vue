<template>
    <div class="article">
        <h2>{{ article.title }}</h2>
        <p>{{ article.content }}</p>
        <button @click="commentArticle">Comment</button>
        <button @click="editArticle">Edit</button>
        <button @click="deleteArticle">Delete</button>
    </div>
</template>
  
<script>
export default {
    name: 'Article',
    props: {
        article: {
            type: Object,
            required: true
        }
    },
    methods: {
        commentArticle() {
            // Logic to comment on the article
            console.log('Comment on article:', this.article.id);
        },
        editArticle() {
            // Logic to edit the article
            console.log('Edit article:', this.article.id);
        },
        deleteArticle() {
            // Logic to delete the article
            this.$emit('delete-article', this.article.id);
        }
    }
};
</script>
  
<style>
.article {
    border: 1px solid #ddd;
    padding: 1rem;
    margin-bottom: 1rem;
}
</style>