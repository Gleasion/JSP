package dao;

import java.util.ArrayList;

import vo.MemberVO;

public class MemberDAO{
	
	private ArrayList<MemberVO> memberList = new ArrayList<MemberVO>();
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public ArrayList<MemberVO> getMemberList() {
		return memberList;
	}

	public MemberVO getMember(String mem_id) {
		MemberVO memberVO = null;
		
		for (int i = 0; i < memberList.size(); i++) {
			MemberVO member = memberList.get(i);
			if (member != null && member.getMem_id() != null && member.getMem_id().equals(mem_id)) {
				memberVO = member;
				break;
			}
		}
		
		return memberVO;
	}
	
	public void insertMember(MemberVO member) {
		memberList.add(member);
	}

}
