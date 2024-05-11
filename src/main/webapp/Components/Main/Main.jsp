<main id="services">
    <h1>What We Offer You</h1>
    <h2>
        We provide online instant cash loans with quick approval that suit your
        term
    </h2>
    <div class="grid-container">
        <div class="grid-item">
            <img src="Resources/Main/home_loan.jpg" alt="Home Loan" />
            <p class="loan-name">Home Loan</p>
            <ul>
                <li>Small Home Financing</li>
                <li>Minimal Documentations</li>
                <li>Quick Approval</li>
            </ul>
        </div>
        <div class="grid-item">
            <img src="Resources/Main/business_loan.png" alt="Business Loan" />
            <p class="loan-name">Business Loan</p>
            <ul>
                <li>Competitive interest rates</li>
                <li>Flexible repayment options</li>
                <li>Low down payment requirements</li>
            </ul>
        </div>
        <div class="grid-item">
            <img src="Resources/Main/education_loan.jpg" alt="Education Loan" />
            <p class="loan-name">Education Loan</p>
            <ul>
                <li>Easy Approval</li>
                <li>Upto 10 Lakhs</li>
                <li>No interest during study period</li>
            </ul>
        </div>
    </div>
    <p style="text-align: center">
        <a href="<%= request.getContextPath() %>/Views/Customer/Services.jsp" class="explore-loans">Explore</a>
    </p>
</main>
<main id="feedback">
    <div class="left-banner">
        <img src="Resources/Main/suggestion-box.png" alt="suggestion-box" />
    </div>
    <div class="right-form-section">
        <p class="feedback-header">Enter Feedback:</p>
        <form  onsubmit="return validateSuggestionForm()" action="Logic/addSuggestion.jsp" class="suggestion-form" name="suggestion-form">
    		<textarea name="suggestion" id="suggestion-textarea" placeholder="Enter your suggestion (max 500 characters)" maxlength="500"></textarea>
    		<input type="submit" value="Send Feedback" />
		</form>
    </div>
</main>