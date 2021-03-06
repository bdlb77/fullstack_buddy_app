import React from 'react';
import PropTypes from 'prop-types';
import styled from 'styled-components';
import Project from './icons/Project';
import World from './icons/World';
import Landing from './icons/Landing';
import Arrow1 from '../components/icons/Arrow1';
import Arrow2 from '../components/icons/Arrow2';
import Arrow3 from '../components/icons/Arrow3';
import Arrow4 from '../components/icons/Arrow4';

const LandingMainStyles = styled.main`
	width: 95%;
	background-color: ${props => props.theme.white};
	margin: 0 auto;
	box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.25);
	margin-top: 10rem;
	padding-top: 10rem;
	position: relative;

	h1 {
		font-family: 'delius_unicase';
		width: 250px;
		margin: 0 auto;
		line-height: 1.5;
	}

	section {
		display: flex;
		justify-content: space-around;
		align-items: center;
		flex-wrap: wrap;
		.image {
			flex-grow: 1;
			padding: 0 5%;
			min-width: 300px;
		}
		&:not(:first-child) {
			margin-top: 20rem;
		}
		.world {
			margin-bottom: 10rem;
		}
		.text {
			text-align: center;
		}
	}

	.project_section,
	.coding,
	.world {
		position: relative;
	}

	.arrow_container,
	.arrow_2,
	.arrow_3,
	.arrow_4 {
		display: none;
	}
	@media screen and (min-width: 1045px) {
		.text {
			width: 40%;
		}
		.arrow_container {
			display: block;
			position: absolute;
			height: 75vh;
			width: 60vh;
			top: -50vh;
		}

		.arrow_2 {
			display: block;
			position: absolute;
			top: 0;
			right: 50px;
			svg {
				height: 90%;
				width: 80%;
			}
		}

		.arrow_3 {
			display: block;
			position: absolute;
			top: 150px;
			left: 140px;

			svg {
				height: 90%;
				width: 80%;
			}
		}

		.arrow_4 {
			display: block;
			position: absolute;
			top: 150px;
			right: 100px;

			svg {
				height: 100%;
				width: 85%;
			}
		}
	}
`;

const LandingMain = props => {
	return (
		<LandingMainStyles>
			<div className="arrow_container">
				<Arrow1 />
			</div>
			<section className="project_section">
				<div className="image">
					<Project />
					<div className="arrow_2">
						<Arrow2 />
					</div>
				</div>
				<div className="text">
					<h1>To Find the Projects You Love</h1>
				</div>
			</section>
			<section className="coding">
				<div className="text">
					<h1>To Expand Your Coding Skills</h1>
				</div>
				<div className="image">
					<Landing />
					<div className="arrow_3">
						<Arrow3 />
					</div>
				</div>
			</section>
			<section className="world">
				<div className="image">
					<World />
					<div className="arrow_4">
						<Arrow4 />
					</div>
				</div>
				<div className="text">
					<h1>To Take You Wherever You Want To Go Next</h1>
				</div>
			</section>
		</LandingMainStyles>
	);
};

LandingMain.propTypes = {};

export default LandingMain;
