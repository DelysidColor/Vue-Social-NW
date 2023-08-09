<template>
	<div class="container">
		<ul class="tree">
			<div :class="{ bold: isFolder }" @click="openFolder">
				{{ nodes.name }}
				<template v-if="isFolder"
					>[{{ this.nodes.items.length }} {{ isOpen ? "-" : "+" }} ]</template
				>
			</div>
			<li v-if="isFolder" v-show="isOpen">
				<Tree v-for="(node, i) in nodes.items" :nodes="node" :key="i" />
			</li>
		</ul>
	</div>
</template>

<script>
export default {
	name: "Tree",
	props: {
		nodes: {},
	},
	data() {
		return {
			isOpen: false,
		};
	},
	computed: {
		isFolder() {
			return this.nodes.items && this.nodes.items.length;
		},
	},
	methods: {
		openFolder() {
			if (this.isFolder) {
				this.isOpen = !this.isOpen;
			}
		},
	},
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
.tree {
	list-style-type: none;
}
</style>
