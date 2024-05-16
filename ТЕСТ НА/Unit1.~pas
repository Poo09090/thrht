unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure ButtonYes(Sender: TObject);
    procedure ButtonNo(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  test_length: integer;
  questions: array[0..47] of string;
  variants: array[0..47] of array[0..1] of string;
  answers: array[0..47] of array[0..1] of integer;
  scales: array[0..3] of integer;
  current_index : integer;


implementation

{$R *.dfm}




procedure TForm1.ButtonYes(Sender: TObject);
begin
  if (current_index < test_length) then
    begin
      current_index := current_index + 1;
      Label1.Caption := questions[ current_index ];
      scales[ answers[ current_index ][0] ]  := scales[ answers[ current_index ][0] ] + 1;
    end
  else
    begin
      if (scales[1] >= 13) then Label2.Caption :=  'Шкала визуальности: высокий уровень визуального восприятия'
      else if (scales[1] >= 8) then Label2.Caption := 'Шкала визуальности: средний уровень визуального восприятия'
      else Label2.Caption := 'Шкала визуальности: низкий уровень визуального восприятия';
      if (scales[2] >= 13) then Label3.Caption :=  'Шкала аудиальности: высокий уровень аудиального восприятия'
      else if (scales[2] >= 8) then Label3.Caption :=  'Шкала аудиальности: средний уровень аудиального восприятия'
      else Label3.Caption :=  'Шкала аудиальности: низкий уровень аудиального восприятия';
      if (scales[3] >= 13) then Label4.Caption := 'Шкала кинестетичности: высокий уровень кинестетического восприятия'
      else if (scales[3] >= 8) then Label4.Caption := 'Шкала кинестетичности: средний уровень кинестетического восприятия'
      else Label4.Caption := 'Шкала кинестетичности: низкий уровень кинестетического восприятия';
      GroupBox2.Visible := True;
    end;
end;


procedure TForm1.ButtonNo(Sender: TObject);
begin
  if (current_index < test_length) then
    begin
      current_index := current_index + 1;
      Label1.Caption := questions[ current_index ];
      scales[ answers[ current_index ][1] ]  := scales[ answers[ current_index ][1] ] + 1;
    end
  else
    begin
      if (scales[1] >= 13) then Label2.Caption :=  'Шкала визуальности: высокий уровень визуального восприятия'
      else if (scales[1] >= 8) then Label2.Caption := 'Шкала визуальности: средний уровень визуального восприятия'
      else Label2.Caption := 'Шкала визуальности: низкий уровень визуального восприятия';
      if (scales[2] >= 13) then Label3.Caption :=  'Шкала аудиальности: высокий уровень аудиального восприятия'
      else if (scales[2] >= 8) then Label3.Caption :=  'Шкала аудиальности: средний уровень аудиального восприятия'
      else Label3.Caption :=  'Шкала аудиальности: низкий уровень аудиального восприятия';
      if (scales[3] >= 13) then Label4.Caption := 'Шкала кинестетичности: высокий уровень кинестетического восприятия'
      else if (scales[3] >= 8) then Label4.Caption := 'Шкала кинестетичности: средний уровень кинестетического восприятия'
      else Label4.Caption := 'Шкала кинестетичности: низкий уровень кинестетического восприятия';
      GroupBox2.Visible := True;
    end;
end;


procedure TForm1.Button3Click(Sender: TObject);
var
  DT: TDateTime;
  f: TextFile;
  name: string;
begin
  DT := Now;
  name := DateTimeToStr(DT);
  name := Edit1.text + '_' + StringReplace(name, '.', '_', [rfReplaceAll, rfIgnoreCase]);
  name := StringReplace(name, ' ', '_', [rfReplaceAll, rfIgnoreCase]);
  name := StringReplace(name, ':', '_', [rfReplaceAll, rfIgnoreCase]);

  AssignFile(f, name);
  Rewrite(f);
  Writeln(f, Label2.Caption);
  Writeln(f, Label3.Caption);
  Writeln(f, Label4.Caption);
  CloseFile(f);
  close();
end;


procedure TForm1.FormCreate(Sender: TObject);         // TODO: test choose
begin
  test_length := 47;
questions[0] := '1. Люблю наблюдать за облаками и звездами.';
questions[1] := '2. Часто напеваю себе потихоньку.';
questions[2] := '3. Не признаю моду, которая неудобна.';
questions[3] := '4. Люблю ходить в сауну.';
questions[4] := '5. В автомашине цвет для меня имеет значение.';
questions[5] := '6. Узнаю по шагам, кто вошел в помещение.';
questions[6] := '7. Меня развлекает подражание диалектам.';
questions[7] := '8. Внешнему виду придаю серьезное значение.';
questions[8] := '9. Мне нравится принимать массаж.';
questions[9] := '10. Когда есть время, люблю наблюдать за людьми.';
questions[10] := '11. Плохо себя чувствую, когда не наслаждаюсь движением.';
questions[11] := '12. Видя одежду в витрине, знаю, что мне будет хорошо в ней.';
questions[12] := '13. Когда услышу старую мелодию, ко мне возвращается прошлое.';
questions[13] := '14. Люблю читать во время еды.';
questions[14] := '15. Люблю поговорить по телефону.';
questions[15] := '16. У меня есть склонность к полноте.';
questions[16] := '17. Предпочитаю слушать рассказ, который кто-то читает, чем читать самому.';
questions[17] := '18. После плохого дня мой организм в напряжении.';
questions[18] := '19. Охотно и много фотографирую.';
questions[19] := '20. Долго помню, что мне сказали приятели или знакомые.';
questions[20] := '21. Легко могу отдать деньги за цветы, потому что они украшают жизнь.';
questions[21] := '22. Вечером люблю принять горячую ванну.';
questions[22] := '23. Стараюсь записывать свои личные дела.';
questions[23] := '24. Часто разговариваю с собой.';
questions[24] := '25. После длительной езды на машине долго прихожу в себя.';
questions[25] := '26. Тембр голоса многое мне говорит о человеке.';
questions[26] := '27. Придаю значение манере одеваться, свойственной другим.';
questions[27] := '28. Люблю потягиваться, расправлять конечности, разминаться.';
questions[28] := '29. Слишком твердая или слишком мягкая постель для меня мука.';
questions[29] := '30. Мне нелегко найти удобную обувь.';
questions[30] := '31. Люблю смотреть теле- и видеофильмы.';
questions[31] := '32. Даже спустя годы могу узнать лица, которые когда-либо видел.';
questions[32] := '33. Люблю ходить под дождем, когда капли стучат по зонтику.';
questions[33] := '34. Люблю слушать, когда говорят.';
questions[34] := '35. Люблю заниматься подвижным спортом или выполнять какие-либо двигательные упражнения, иногда и потанцевать.';
questions[35] := '36. Когда близко тикает будильник, не могу уснуть.';
questions[36] := '37. У меня неплохая стереоаппаратура.';
questions[37] := '38. Когда слушаю музыку, отбиваю такт ногой.';
questions[38] := '39. На отдыхе не люблю осматривать памятники архитектуры.';
questions[39] := '40. Не выношу беспорядок.';
questions[40] := '41. Не люблю синтетических тканей.';
questions[41] := '42. Считаю, что атмосфера в помещении зависит от освещения.';
questions[42] := '43. Часто хожу на концерты.';
questions[43] := '44. Пожатие руки много говорит мне о данной личности.';
questions[44] := '45. Охотно посещаю галереи и выставки.';
questions[45] := '46. Серьезная дискуссия – это интересно.';
questions[46] := '47. Через прикосновение можно сказать значительно больше, чем словами.';
questions[47] := '48. В шуме не могу сосредоточиться.';
  answers[0][0] := 1;
  answers[0][1] := 0;
  answers[1][0] := 2;
  answers[1][1] := 0;
  answers[2][0] := 3;
  answers[2][1] := 0;
  answers[3][0] := 3;
  answers[3][1] := 0;
  answers[4][0] := 1;
  answers[4][1] := 0;
  answers[5][0] := 2;
  answers[5][1] := 0;
  answers[6][0] := 2;
  answers[6][1] := 0;
  answers[7][0] := 1;
  answers[7][1] := 0;
  answers[8][0] := 3;
  answers[8][1] := 0;
  answers[9][0] := 1;
  answers[9][1] := 0;
  answers[10][0] := 3;
  answers[10][1] := 0;
  answers[11][0] := 1;
  answers[11][1] := 0;
  answers[12][0] := 2;
  answers[12][1] := 0;
  answers[13][0] := 1;
  answers[13][1] := 0;
  answers[14][0] := 2;
  answers[14][1] := 0;
  answers[15][0] := 3;
  answers[15][1] := 0;
  answers[16][0] := 2;
  answers[16][1] := 0;
  answers[17][0] := 3;
  answers[17][1] := 0;
  answers[18][0] := 1;
  answers[18][1] := 0;
  answers[19][0] := 2;
  answers[19][1] := 0;
  answers[20][0] := 1;
  answers[20][1] := 0;
  answers[21][0] := 3;
  answers[21][1] := 0;
  answers[22][0] := 1;
  answers[22][1] := 0;
  answers[23][0] := 2;
  answers[23][1] := 0;
  answers[24][0] := 3;
  answers[24][1] := 0;
  answers[25][0] := 2;
  answers[25][1] := 0;
  answers[26][0] := 1;
  answers[26][1] := 0;
  answers[27][0] := 3;
  answers[27][1] := 0;
  answers[28][0] := 3;
  answers[28][1] := 0;
  answers[29][0] := 3;
  answers[29][1] := 0;
  answers[30][0] := 1;
  answers[30][1] := 0;
  answers[31][0] := 1;
  answers[31][1] := 0;
  answers[32][0] := 2;
  answers[32][1] := 0;
  answers[33][0] := 2;
  answers[33][1] := 0;
  answers[34][0] := 3;
  answers[34][1] := 0;
  answers[35][0] := 2;
  answers[35][1] := 0;
  answers[36][0] := 2;
  answers[36][1] := 0;
  answers[37][0] := 3;
  answers[37][1] := 0;
  answers[38][0] := 1;
  answers[38][1] := 0;
  answers[39][0] := 1;
  answers[39][1] := 0;
  answers[40][0] := 3;
  answers[40][1] := 0;
  answers[41][0] := 1;
  answers[41][1] := 0;
  answers[42][0] := 2;
  answers[42][1] := 0;
  answers[43][0] := 3;
  answers[43][1] := 0;
  answers[44][0] := 1;
  answers[44][1] := 0;
  answers[45][0] := 2;
  answers[45][1] := 0;
  answers[46][0] := 3;
  answers[46][1] := 0;
  answers[47][0] := 2;
  answers[47][1] := 0;
  answers[4][0] := 1;
  answers[4][1] := 0;
  current_index := 0;
  Label1.Caption := questions[ current_index ];
end;


end.
