---
layout: default
title: Catalogue
---



<div id="topic">
    <h2>WITS: Waikato Internet Traffic Storage</h2>
	<table>
		<tr id="tableHead">
			<td>Name</td>
			<td>Availability (WITS)</td>
			<td>Availability (RIPE)</td>
			<td>Description</td>
		</tr>
		<tr id="thSpacer"><td></td><td></td></tr>
		{%- for set in site.wits -%}
			{%- if set.layout == "witset" -%}
			<tr>
				<td width="15%" ><a href="{{ set.url | absolute_url }}">
					{{ set.setname }}</a></td>
				<td>{%- if set.download != null -%}Available{%- endif -%}</td>
				<td>{%- if set.ripedownload != null -%}Available{%- endif -%}</td>
				<td>{{- set.description | markdownify -}}</td>
			</tr>
			{%- endif -%}
		{%- endfor -%}
	</table>
</div>