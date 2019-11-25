import React from 'react';
import PropTypes from 'prop-types';
import styled from 'styled-components';
import DesignSprintLogo from '../components/icons/DesignSprint';
const SloganStyles = styled.header`
	display: flex;
	flex-wrap: wrap;
	height: calc(100vh - 70px);
	.slogan {
		text-align: center;
		flex-basis: 40%;
		margin: 0 auto;
		display: flex;
		flex-direction: column;
		justify-content: space-around;
		h1 {
			line-height: 8rem;
			font-size: 6vh;
		}
		h4 {
			position: relative;
		}
		h1,
		h4 {
			margin: 0;
		}
	}
	span {
		color: ${props => props.theme.secondary};
	}
	.image {
		flex-grow: 1;
		padding: 0 5%;
		min-width: 300px;
	}

	@media screen and (min-width: 500px) {
		.slogan {
			position: relative;
			right: -80px;
			bottom: 100px;
			justify-content: center;
			h1 {
				font-size: 9vh;
			}
		}
		.image {
			min-width: 500px;
			position: relative;
		}

		/* @media screen and (min-width: 450px) and (max-width: 999px) {
			.arrow_container {
				bottom: -1000px;
				transform: rotate(-35deg);
				left: -100px;
			}
		}
		@media screen and (min-width: 1000px) and (max-width: 1025px) {
			.arrow_container {
				bottom: -1200px;
				transform: rotate(-35deg);
				left: -100px;
			}
		}
		*/
	}
`;
const Slogan = props => {
	return (
		<>
			<SloganStyles>
				<div className="slogan">
					<h1>Fullstack Buddy</h1>
					<h4>
						<span>making </span>your next steps<span> the best steps</span>
					</h4>
				</div>
				<div className="image">
					<DesignSprintLogo></DesignSprintLogo>
				</div>
			</SloganStyles>
		</>
	);
};

Slogan.propTypes = {};

export default Slogan;
