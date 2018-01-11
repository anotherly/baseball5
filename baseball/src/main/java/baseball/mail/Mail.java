package baseball.mail;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import baseball.controller.SubControll;
import baseball.mail.model.MailRepository;
import baseball.mail.model.MailVo;
import baseball.model.PathData;

@Service
public class Mail implements SubControll{
   @Resource
   PathData data;
   
   @Resource
   MailRepository dao;

   MailVo vo;
   
   @Override
   public void execute() {
      System.out.println("���� ����ťƮ ����"+ data + " //----// data.getDd() : " + data.getDd());
      vo = (MailVo) data.getDd();
      System.out.println("����Ŭ�������� mailvo �� : "+vo);
      switch (data.getService()) {
      
      case "mailList":
         System.out.println("���� Ŭ������ ���ϸ���Ʈ ���̽�");
         list();
      
      case "mailGo":
         System.out.println("���� Ŭ������ ���� �� ���̽�");
         insert();
         break;

      
      }
   }

   void list() {
      data.setDd(dao.list(vo));
      System.out.println("�Ƕ�������");
   }
   
   void insert() {
      System.out.println("����Ŭ���� �μ�Ʈ �޼ҵ�");
      dao.insert(vo);
      data.setRedirect(true);
      data.setPath("redirect:mailSubmit");
   }
   
   
}