import React, { Component } from 'react';
import Meta from '../meta/Meta';
class Page extends Component {
	render() {
		return (
			<div>
				<Meta></Meta>
				<div>{this.props.children}</div>
			</div>
		);
	}
}

export default Page;
