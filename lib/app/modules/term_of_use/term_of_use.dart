import 'package:flutter/material.dart';

class TermOfUse extends StatelessWidget {
  const TermOfUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Terms and Condition',

          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: Color(0xff3C3C3C),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Text(
            """FTAX is not an Advisor. FTAX is merely a tool that helps you plan for taxes.  

Before investing in any mutual fund or exchange-traded fund, you should consider its investment objectives, risks, charges, and expenses. Contact for a prospectus, an offering circular, or, if available, a summary prospectus containing this information. Read it carefully.  

Performance data shown represents past performance and is no guarantee of future results. Investment return and principal value will fluctuate, so you may have a gain or loss when shares are sold. Current performance may be higher or lower than that quoted.  

Source: Fidelity Investments as of.  

You could lose money by investing in a money market fund. Although the fund seeks to preserve the value of your investment at \$1.00 per share, it cannot guarantee it will do so.  

An investment in the fund is not a bank account and is not insured or guaranteed by the Federal Deposit Insurance Corporation or any other government agency.  

FTAX is not a Financial Advisor and is not required to reimburse the fund for losses, and you should not expect that FTAX will provide financial support to the fund at any time, including during periods of market stress.""",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
