.class public Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;
.super Ljava/lang/Object;
.source "CharacterParser.java"


# static fields
.field private static characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

.field public static pystr:[Ljava/lang/String;

.field private static pyvalue:[I


# instance fields
.field private buffer:Ljava/lang/StringBuilder;

.field private resource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x18c

    .line 8
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->pyvalue:[I

    .line 58
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ai"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "an"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "ang"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ao"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 59
    const-string/jumbo v2, "ba"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "bai"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ban"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "bang"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "bao"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "bei"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "ben"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "beng"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "bi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 60
    const-string/jumbo v2, "bian"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "biao"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "bie"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "bin"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "bing"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "bo"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "bu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "ca"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "cai"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 61
    const-string/jumbo v2, "can"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "cang"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "cao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "ce"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "ceng"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "cha"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "chai"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "chan"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "chang"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    .line 62
    const-string/jumbo v2, "chao"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "che"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "chen"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "chi"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "chong"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "chou"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "chu"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    .line 63
    const-string/jumbo v2, "chuai"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "chuan"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "chuang"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "chui"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "chun"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "chuo"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "ci"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "cong"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    .line 64
    const-string/jumbo v2, "cou"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "cu"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "cuan"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "cui"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "cun"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "cuo"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "dai"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "dan"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 65
    const-string/jumbo v2, "dang"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "dao"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "deng"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "di"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "dian"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "diao"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "die"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "ding"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    .line 66
    const-string/jumbo v2, "diu"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "dong"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "dou"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "du"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "duan"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "dui"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "dun"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "duo"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    .line 67
    const-string/jumbo v2, "er"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "fa"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "fan"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "fang"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "fei"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "fen"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "feng"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "fo"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "fou"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "fu"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    .line 68
    const-string/jumbo v2, "ga"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "gai"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "gan"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "gang"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "gao"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "ge"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "gei"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "gen"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "geng"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 69
    const-string/jumbo v2, "gong"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "gou"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "gu"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "gua"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "guai"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "guan"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "guang"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "gui"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "gun"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    .line 70
    const-string/jumbo v2, "guo"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "ha"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "hai"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "han"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "hang"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "hao"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "he"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "hei"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "hen"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 71
    const-string/jumbo v2, "heng"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "hong"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "hou"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "hua"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "huai"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "huan"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "huang"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "hui"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    .line 72
    const-string/jumbo v2, "hun"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "huo"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "ji"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "jia"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "jian"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "jiang"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "jiao"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "jie"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "jin"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 73
    const-string/jumbo v2, "jing"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "jiong"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "jiu"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "ju"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "juan"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "jue"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "jun"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "ka"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "kai"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    .line 74
    const-string/jumbo v2, "kan"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "kang"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "kao"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "ke"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "ken"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "keng"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "kong"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "kou"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 75
    const-string/jumbo v2, "kua"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "kuai"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "kuan"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "kuang"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "kui"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "kun"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "kuo"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "lai"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    .line 76
    const-string/jumbo v2, "lan"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v2, "lang"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "lao"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "le"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "lei"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v2, "leng"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "li"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "lia"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string/jumbo v2, "lian"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    .line 77
    const-string/jumbo v2, "liang"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "liao"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v2, "lie"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string/jumbo v2, "lin"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string/jumbo v2, "ling"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string/jumbo v2, "liu"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "lou"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string/jumbo v2, "lu"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    .line 78
    const-string/jumbo v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string/jumbo v2, "luan"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "lue"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string/jumbo v2, "lun"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, "luo"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, "ma"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "mai"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string/jumbo v2, "man"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string/jumbo v2, "mang"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    .line 79
    const-string/jumbo v2, "mao"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string/jumbo v2, "me"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string/jumbo v2, "mei"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string/jumbo v2, "men"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string/jumbo v2, "meng"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string/jumbo v2, "mi"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string/jumbo v2, "mian"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string/jumbo v2, "miao"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string/jumbo v2, "mie"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    .line 80
    const-string/jumbo v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string/jumbo v2, "ming"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string/jumbo v2, "miu"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string/jumbo v2, "mo"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string/jumbo v2, "mou"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string/jumbo v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string/jumbo v2, "na"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string/jumbo v2, "nai"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string/jumbo v2, "nan"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    .line 81
    const-string/jumbo v2, "nang"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string/jumbo v2, "nao"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string/jumbo v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string/jumbo v2, "nei"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string/jumbo v2, "nen"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string/jumbo v2, "neng"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string/jumbo v2, "ni"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string/jumbo v2, "nian"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string/jumbo v2, "niang"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    .line 82
    const-string/jumbo v2, "niao"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string/jumbo v2, "nie"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string/jumbo v2, "nin"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string/jumbo v2, "ning"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string/jumbo v2, "niu"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string/jumbo v2, "nong"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string/jumbo v2, "nu"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string/jumbo v2, "nv"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string/jumbo v2, "nuan"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    .line 83
    const-string/jumbo v2, "nue"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string/jumbo v2, "nuo"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string/jumbo v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string/jumbo v2, "ou"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string/jumbo v2, "pa"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string/jumbo v2, "pai"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string/jumbo v2, "pan"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string/jumbo v2, "pang"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string/jumbo v2, "pao"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string/jumbo v2, "pei"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    .line 84
    const-string/jumbo v2, "pen"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string/jumbo v2, "peng"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string/jumbo v2, "pi"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string/jumbo v2, "pian"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string/jumbo v2, "piao"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string/jumbo v2, "pie"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string/jumbo v2, "pin"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string/jumbo v2, "ping"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string/jumbo v2, "po"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    .line 85
    const-string/jumbo v2, "pu"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string/jumbo v2, "qi"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string/jumbo v2, "qia"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string/jumbo v2, "qian"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string/jumbo v2, "qiang"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string/jumbo v2, "qiao"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string/jumbo v2, "qie"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string/jumbo v2, "qin"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string/jumbo v2, "qing"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    .line 86
    const-string/jumbo v2, "qiong"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string/jumbo v2, "qiu"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string/jumbo v2, "qu"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string/jumbo v2, "quan"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string/jumbo v2, "que"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string/jumbo v2, "qun"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string/jumbo v2, "ran"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string/jumbo v2, "rang"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string/jumbo v2, "rao"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    .line 87
    const-string/jumbo v2, "re"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string/jumbo v2, "ren"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string/jumbo v2, "reng"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string/jumbo v2, "ri"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string/jumbo v2, "rong"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string/jumbo v2, "rou"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string/jumbo v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string/jumbo v2, "ruan"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string/jumbo v2, "rui"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    .line 88
    const-string/jumbo v2, "run"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string/jumbo v2, "ruo"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string/jumbo v2, "sa"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string/jumbo v2, "sai"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string/jumbo v2, "san"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string/jumbo v2, "sang"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string/jumbo v2, "sao"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string/jumbo v2, "se"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string/jumbo v2, "sen"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    .line 89
    const-string/jumbo v2, "seng"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string/jumbo v2, "sha"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string/jumbo v2, "shai"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string/jumbo v2, "shan"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string/jumbo v2, "shang"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string/jumbo v2, "shao"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string/jumbo v2, "she"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string/jumbo v2, "shen"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    .line 90
    const-string/jumbo v2, "sheng"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string/jumbo v2, "shi"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string/jumbo v2, "shou"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string/jumbo v2, "shu"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string/jumbo v2, "shua"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string/jumbo v2, "shuai"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string/jumbo v2, "shuan"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string/jumbo v2, "shuang"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    .line 91
    const-string/jumbo v2, "shui"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string/jumbo v2, "shun"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string/jumbo v2, "shuo"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string/jumbo v2, "si"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string/jumbo v2, "song"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string/jumbo v2, "sou"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string/jumbo v2, "su"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string/jumbo v2, "suan"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string/jumbo v2, "sui"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    .line 92
    const-string/jumbo v2, "sun"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string/jumbo v2, "suo"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string/jumbo v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string/jumbo v2, "tai"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string/jumbo v2, "tan"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string/jumbo v2, "tang"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string/jumbo v2, "tao"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string/jumbo v2, "te"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string/jumbo v2, "teng"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    .line 93
    const-string/jumbo v2, "ti"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string/jumbo v2, "tian"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string/jumbo v2, "tiao"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string/jumbo v2, "tie"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string/jumbo v2, "ting"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string/jumbo v2, "tong"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string/jumbo v2, "tou"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string/jumbo v2, "tu"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string/jumbo v2, "tuan"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    .line 94
    const-string/jumbo v2, "tui"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string/jumbo v2, "tun"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string/jumbo v2, "tuo"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string/jumbo v2, "wa"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string/jumbo v2, "wai"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string/jumbo v2, "wan"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string/jumbo v2, "wang"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string/jumbo v2, "wei"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string/jumbo v2, "wen"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    .line 95
    const-string/jumbo v2, "weng"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string/jumbo v2, "wo"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string/jumbo v2, "wu"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string/jumbo v2, "xi"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string/jumbo v2, "xia"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string/jumbo v2, "xian"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string/jumbo v2, "xiang"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string/jumbo v2, "xiao"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string/jumbo v2, "xie"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    .line 96
    const-string/jumbo v2, "xin"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string/jumbo v2, "xing"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string/jumbo v2, "xiong"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string/jumbo v2, "xiu"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string/jumbo v2, "xu"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string/jumbo v2, "xuan"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string/jumbo v2, "xue"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string/jumbo v2, "xun"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string/jumbo v2, "ya"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    .line 97
    const-string/jumbo v2, "yan"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string/jumbo v2, "yang"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string/jumbo v2, "yao"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string/jumbo v2, "ye"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string/jumbo v2, "yi"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string/jumbo v2, "yin"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string/jumbo v2, "ying"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string/jumbo v2, "yo"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string/jumbo v2, "yong"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    .line 98
    const-string/jumbo v2, "you"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string/jumbo v2, "yu"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string/jumbo v2, "yuan"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string/jumbo v2, "yue"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string/jumbo v2, "yun"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string/jumbo v2, "za"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string/jumbo v2, "zai"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string/jumbo v2, "zan"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string/jumbo v2, "zang"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    .line 99
    const-string/jumbo v2, "zao"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string/jumbo v2, "ze"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string/jumbo v2, "zei"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string/jumbo v2, "zen"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string/jumbo v2, "zeng"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string/jumbo v2, "zha"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string/jumbo v2, "zhai"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string/jumbo v2, "zhan"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string/jumbo v2, "zhang"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    .line 100
    const-string/jumbo v2, "zhao"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string/jumbo v2, "zhe"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string/jumbo v2, "zhen"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string/jumbo v2, "zheng"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string/jumbo v2, "zhi"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string/jumbo v2, "zhong"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string/jumbo v2, "zhou"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string/jumbo v2, "zhu"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    .line 101
    const-string/jumbo v2, "zhua"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string/jumbo v2, "zhuai"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string/jumbo v2, "zhuan"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string/jumbo v2, "zhuang"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string/jumbo v2, "zhui"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string/jumbo v2, "zhun"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string/jumbo v2, "zhuo"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string/jumbo v2, "zi"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    .line 102
    const-string/jumbo v2, "zong"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string/jumbo v2, "zou"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string/jumbo v2, "zu"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string/jumbo v2, "zuan"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string/jumbo v2, "zui"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string/jumbo v2, "zun"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string/jumbo v2, "zuo"

    aput-object v2, v0, v1

    .line 58
    sput-object v0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->pystr:[Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    invoke-direct {v0}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;-><init>()V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    return-void

    .line 8
    nop

    :array_0
    .array-data 0x4
        0xa1t 0xb0t 0xfft 0xfft
        0xa3t 0xb0t 0xfft 0xfft
        0xb0t 0xb0t 0xfft 0xfft
        0xb9t 0xb0t 0xfft 0xfft
        0xbct 0xb0t 0xfft 0xfft
        0xc5t 0xb0t 0xfft 0xfft
        0xd7t 0xb0t 0xfft 0xfft
        0xdft 0xb0t 0xfft 0xfft
        0xeet 0xb0t 0xfft 0xfft
        0xfat 0xb0t 0xfft 0xfft
        0xadt 0xb1t 0xfft 0xfft
        0xbct 0xb1t 0xfft 0xfft
        0xc0t 0xb1t 0xfft 0xfft
        0xc6t 0xb1t 0xfft 0xfft
        0xdet 0xb1t 0xfft 0xfft
        0xeat 0xb1t 0xfft 0xfft
        0xeet 0xb1t 0xfft 0xfft
        0xf2t 0xb1t 0xfft 0xfft
        0xf8t 0xb1t 0xfft 0xfft
        0xa3t 0xb2t 0xfft 0xfft
        0xb8t 0xb2t 0xfft 0xfft
        0xc1t 0xb2t 0xfft 0xfft
        0xc2t 0xb2t 0xfft 0xfft
        0xcdt 0xb2t 0xfft 0xfft
        0xd4t 0xb2t 0xfft 0xfft
        0xd9t 0xb2t 0xfft 0xfft
        0xdet 0xb2t 0xfft 0xfft
        0xe3t 0xb2t 0xfft 0xfft
        0xe5t 0xb2t 0xfft 0xfft
        0xf0t 0xb2t 0xfft 0xfft
        0xf3t 0xb2t 0xfft 0xfft
        0xfdt 0xb2t 0xfft 0xfft
        0xact 0xb3t 0xfft 0xfft
        0xb5t 0xb3t 0xfft 0xfft
        0xbbt 0xb3t 0xfft 0xfft
        0xc5t 0xb3t 0xfft 0xfft
        0xd4t 0xb3t 0xfft 0xfft
        0xe4t 0xb3t 0xfft 0xfft
        0xe9t 0xb3t 0xfft 0xfft
        0xf5t 0xb3t 0xfft 0xfft
        0xa7t 0xb4t 0xfft 0xfft
        0xa8t 0xb4t 0xfft 0xfft
        0xaft 0xb4t 0xfft 0xfft
        0xb5t 0xb4t 0xfft 0xfft
        0xbat 0xb4t 0xfft 0xfft
        0xc1t 0xb4t 0xfft 0xfft
        0xc3t 0xb4t 0xfft 0xfft
        0xcft 0xb4t 0xfft 0xfft
        0xd5t 0xb4t 0xfft 0xfft
        0xd6t 0xb4t 0xfft 0xfft
        0xdat 0xb4t 0xfft 0xfft
        0xddt 0xb4t 0xfft 0xfft
        0xe5t 0xb4t 0xfft 0xfft
        0xe8t 0xb4t 0xfft 0xfft
        0xeet 0xb4t 0xfft 0xfft
        0xf4t 0xb4t 0xfft 0xfft
        0xa2t 0xb5t 0xfft 0xfft
        0xb1t 0xb5t 0xfft 0xfft
        0xb6t 0xb5t 0xfft 0xfft
        0xc2t 0xb5t 0xfft 0xfft
        0xc5t 0xb5t 0xfft 0xfft
        0xcct 0xb5t 0xfft 0xfft
        0xdft 0xb5t 0xfft 0xfft
        0xeft 0xb5t 0xfft 0xfft
        0xf8t 0xb5t 0xfft 0xfft
        0xa1t 0xb6t 0xfft 0xfft
        0xaat 0xb6t 0xfft 0xfft
        0xabt 0xb6t 0xfft 0xfft
        0xb5t 0xb6t 0xfft 0xfft
        0xbct 0xb6t 0xfft 0xfft
        0xcbt 0xb6t 0xfft 0xfft
        0xd1t 0xb6t 0xfft 0xfft
        0xd5t 0xb6t 0xfft 0xfft
        0xdet 0xb6t 0xfft 0xfft
        0xeat 0xb6t 0xfft 0xfft
        0xf7t 0xb6t 0xfft 0xfft
        0xf8t 0xb6t 0xfft 0xfft
        0xa2t 0xb7t 0xfft 0xfft
        0xaat 0xb7t 0xfft 0xfft
        0xbbt 0xb7t 0xfft 0xfft
        0xc6t 0xb7t 0xfft 0xfft
        0xd2t 0xb7t 0xfft 0xfft
        0xe1t 0xb7t 0xfft 0xfft
        0xf0t 0xb7t 0xfft 0xfft
        0xf1t 0xb7t 0xfft 0xfft
        0xf2t 0xb7t 0xfft 0xfft
        0xc1t 0xb8t 0xfft 0xfft
        0xc3t 0xb8t 0xfft 0xfft
        0xc9t 0xb8t 0xfft 0xfft
        0xd4t 0xb8t 0xfft 0xfft
        0xddt 0xb8t 0xfft 0xfft
        0xe7t 0xb8t 0xfft 0xfft
        0xf8t 0xb8t 0xfft 0xfft
        0xf9t 0xb8t 0xfft 0xfft
        0xfbt 0xb8t 0xfft 0xfft
        0xa4t 0xb9t 0xfft 0xfft
        0xb3t 0xb9t 0xfft 0xfft
        0xbct 0xb9t 0xfft 0xfft
        0xcet 0xb9t 0xfft 0xfft
        0xd4t 0xb9t 0xfft 0xfft
        0xd7t 0xb9t 0xfft 0xfft
        0xe2t 0xb9t 0xfft 0xfft
        0xe5t 0xb9t 0xfft 0xfft
        0xf5t 0xb9t 0xfft 0xfft
        0xf8t 0xb9t 0xfft 0xfft
        0xfet 0xb9t 0xfft 0xfft
        0xa1t 0xbat 0xfft 0xfft
        0xa8t 0xbat 0xfft 0xfft
        0xbbt 0xbat 0xfft 0xfft
        0xbet 0xbat 0xfft 0xfft
        0xc7t 0xbat 0xfft 0xfft
        0xd9t 0xbat 0xfft 0xfft
        0xdbt 0xbat 0xfft 0xfft
        0xdft 0xbat 0xfft 0xfft
        0xe4t 0xbat 0xfft 0xfft
        0xedt 0xbat 0xfft 0xfft
        0xf4t 0xbat 0xfft 0xfft
        0xa8t 0xbbt 0xfft 0xfft
        0xb1t 0xbbt 0xfft 0xfft
        0xb6t 0xbbt 0xfft 0xfft
        0xc4t 0xbbt 0xfft 0xfft
        0xd2t 0xbbt 0xfft 0xfft
        0xe7t 0xbbt 0xfft 0xfft
        0xedt 0xbbt 0xfft 0xfft
        0xf7t 0xbbt 0xfft 0xfft
        0xcet 0xbct 0xfft 0xfft
        0xdft 0xbct 0xfft 0xfft
        0xa9t 0xbdt 0xfft 0xfft
        0xb6t 0xbdt 0xfft 0xfft
        0xd2t 0xbdt 0xfft 0xfft
        0xedt 0xbdt 0xfft 0xfft
        0xa3t 0xbet 0xfft 0xfft
        0xbct 0xbet 0xfft 0xfft
        0xbet 0xbet 0xfft 0xfft
        0xcft 0xbet 0xfft 0xfft
        0xe8t 0xbet 0xfft 0xfft
        0xeft 0xbet 0xfft 0xfft
        0xf9t 0xbet 0xfft 0xfft
        0xa6t 0xbft 0xfft 0xfft
        0xaat 0xbft 0xfft 0xfft
        0xaft 0xbft 0xfft 0xfft
        0xb5t 0xbft 0xfft 0xfft
        0xbct 0xbft 0xfft 0xfft
        0xc0t 0xbft 0xfft 0xfft
        0xcft 0xbft 0xfft 0xfft
        0xd3t 0xbft 0xfft 0xfft
        0xd5t 0xbft 0xfft 0xfft
        0xd9t 0xbft 0xfft 0xfft
        0xddt 0xbft 0xfft 0xfft
        0xe4t 0xbft 0xfft 0xfft
        0xe9t 0xbft 0xfft 0xfft
        0xedt 0xbft 0xfft 0xfft
        0xeft 0xbft 0xfft 0xfft
        0xf7t 0xbft 0xfft 0xfft
        0xa4t 0xc0t 0xfft 0xfft
        0xa8t 0xc0t 0xfft 0xfft
        0xact 0xc0t 0xfft 0xfft
        0xb3t 0xc0t 0xfft 0xfft
        0xb6t 0xc0t 0xfft 0xfft
        0xc5t 0xc0t 0xfft 0xfft
        0xcct 0xc0t 0xfft 0xfft
        0xd5t 0xc0t 0xfft 0xfft
        0xd7t 0xc0t 0xfft 0xfft
        0xe2t 0xc0t 0xfft 0xfft
        0xe5t 0xc0t 0xfft 0xfft
        0xa9t 0xc1t 0xfft 0xfft
        0xaat 0xc1t 0xfft 0xfft
        0xb8t 0xc1t 0xfft 0xfft
        0xc3t 0xc1t 0xfft 0xfft
        0xd0t 0xc1t 0xfft 0xfft
        0xd5t 0xc1t 0xfft 0xfft
        0xe1t 0xc1t 0xfft 0xfft
        0xeft 0xc1t 0xfft 0xfft
        0xfat 0xc1t 0xfft 0xfft
        0xa5t 0xc2t 0xfft 0xfft
        0xabt 0xc2t 0xfft 0xfft
        0xbft 0xc2t 0xfft 0xfft
        0xcdt 0xc2t 0xfft 0xfft
        0xd3t 0xc2t 0xfft 0xfft
        0xd5t 0xc2t 0xfft 0xfft
        0xdct 0xc2t 0xfft 0xfft
        0xe8t 0xc2t 0xfft 0xfft
        0xf1t 0xc2t 0xfft 0xfft
        0xf7t 0xc2t 0xfft 0xfft
        0xa2t 0xc3t 0xfft 0xfft
        0xa8t 0xc3t 0xfft 0xfft
        0xb4t 0xc3t 0xfft 0xfft
        0xb5t 0xc3t 0xfft 0xfft
        0xc5t 0xc3t 0xfft 0xfft
        0xc8t 0xc3t 0xfft 0xfft
        0xd0t 0xc3t 0xfft 0xfft
        0xdet 0xc3t 0xfft 0xfft
        0xe7t 0xc3t 0xfft 0xfft
        0xeft 0xc3t 0xfft 0xfft
        0xf1t 0xc3t 0xfft 0xfft
        0xf7t 0xc3t 0xfft 0xfft
        0xfdt 0xc3t 0xfft 0xfft
        0xfet 0xc3t 0xfft 0xfft
        0xb1t 0xc4t 0xfft 0xfft
        0xb4t 0xc4t 0xfft 0xfft
        0xc3t 0xc4t 0xfft 0xfft
        0xcat 0xc4t 0xfft 0xfft
        0xcft 0xc4t 0xfft 0xfft
        0xd2t 0xc4t 0xfft 0xfft
        0xd3t 0xc4t 0xfft 0xfft
        0xd8t 0xc4t 0xfft 0xfft
        0xd9t 0xc4t 0xfft 0xfft
        0xdbt 0xc4t 0xfft 0xfft
        0xdct 0xc4t 0xfft 0xfft
        0xddt 0xc4t 0xfft 0xfft
        0xe8t 0xc4t 0xfft 0xfft
        0xeft 0xc4t 0xfft 0xfft
        0xf1t 0xc4t 0xfft 0xfft
        0xf3t 0xc4t 0xfft 0xfft
        0xfat 0xc4t 0xfft 0xfft
        0xfbt 0xc4t 0xfft 0xfft
        0xa3t 0xc5t 0xfft 0xfft
        0xa7t 0xc5t 0xfft 0xfft
        0xabt 0xc5t 0xfft 0xfft
        0xaet 0xc5t 0xfft 0xfft
        0xaft 0xc5t 0xfft 0xfft
        0xb0t 0xc5t 0xfft 0xfft
        0xb2t 0xc5t 0xfft 0xfft
        0xb6t 0xc5t 0xfft 0xfft
        0xb7t 0xc5t 0xfft 0xfft
        0xbet 0xc5t 0xfft 0xfft
        0xc4t 0xc5t 0xfft 0xfft
        0xcat 0xc5t 0xfft 0xfft
        0xd2t 0xc5t 0xfft 0xfft
        0xd7t 0xc5t 0xfft 0xfft
        0xdet 0xc5t 0xfft 0xfft
        0xe7t 0xc5t 0xfft 0xfft
        0xe9t 0xc5t 0xfft 0xfft
        0xf7t 0xc5t 0xfft 0xfft
        0xaat 0xc6t 0xfft 0xfft
        0xaet 0xc6t 0xfft 0xfft
        0xb2t 0xc6t 0xfft 0xfft
        0xb4t 0xc6t 0xfft 0xfft
        0xb9t 0xc6t 0xfft 0xfft
        0xc2t 0xc6t 0xfft 0xfft
        0xcbt 0xc6t 0xfft 0xfft
        0xdat 0xc6t 0xfft 0xfft
        0xfet 0xc6t 0xfft 0xfft
        0xa3t 0xc7t 0xfft 0xfft
        0xb9t 0xc7t 0xfft 0xfft
        0xc1t 0xc7t 0xfft 0xfft
        0xd0t 0xc7t 0xfft 0xfft
        0xd5t 0xc7t 0xfft 0xfft
        0xe0t 0xc7t 0xfft 0xfft
        0xedt 0xc7t 0xfft 0xfft
        0xeft 0xc7t 0xfft 0xfft
        0xf7t 0xc7t 0xfft 0xfft
        0xa6t 0xc8t 0xfft 0xfft
        0xb1t 0xc8t 0xfft 0xfft
        0xb9t 0xc8t 0xfft 0xfft
        0xbbt 0xc8t 0xfft 0xfft
        0xbft 0xc8t 0xfft 0xfft
        0xc4t 0xc8t 0xfft 0xfft
        0xc7t 0xc8t 0xfft 0xfft
        0xc9t 0xc8t 0xfft 0xfft
        0xd3t 0xc8t 0xfft 0xfft
        0xd5t 0xc8t 0xfft 0xfft
        0xd6t 0xc8t 0xfft 0xfft
        0xe0t 0xc8t 0xfft 0xfft
        0xe3t 0xc8t 0xfft 0xfft
        0xedt 0xc8t 0xfft 0xfft
        0xeft 0xc8t 0xfft 0xfft
        0xf2t 0xc8t 0xfft 0xfft
        0xf4t 0xc8t 0xfft 0xfft
        0xf6t 0xc8t 0xfft 0xfft
        0xf9t 0xc8t 0xfft 0xfft
        0xfdt 0xc8t 0xfft 0xfft
        0xa3t 0xc9t 0xfft 0xfft
        0xa6t 0xc9t 0xfft 0xfft
        0xaat 0xc9t 0xfft 0xfft
        0xadt 0xc9t 0xfft 0xfft
        0xaet 0xc9t 0xfft 0xfft
        0xaft 0xc9t 0xfft 0xfft
        0xb8t 0xc9t 0xfft 0xfft
        0xbat 0xc9t 0xfft 0xfft
        0xcat 0xc9t 0xfft 0xfft
        0xd2t 0xc9t 0xfft 0xfft
        0xddt 0xc9t 0xfft 0xfft
        0xe9t 0xc9t 0xfft 0xfft
        0xf9t 0xc9t 0xfft 0xfft
        0xa6t 0xcat 0xfft 0xfft
        0xd5t 0xcat 0xfft 0xfft
        0xdft 0xcat 0xfft 0xfft
        0xa2t 0xcbt 0xfft 0xfft
        0xa4t 0xcbt 0xfft 0xfft
        0xa8t 0xcbt 0xfft 0xfft
        0xaat 0xcbt 0xfft 0xfft
        0xadt 0xcbt 0xfft 0xfft
        0xb1t 0xcbt 0xfft 0xfft
        0xb5t 0xcbt 0xfft 0xfft
        0xb9t 0xcbt 0xfft 0xfft
        0xc9t 0xcbt 0xfft 0xfft
        0xd1t 0xcbt 0xfft 0xfft
        0xd4t 0xcbt 0xfft 0xfft
        0xe1t 0xcbt 0xfft 0xfft
        0xe4t 0xcbt 0xfft 0xfft
        0xeft 0xcbt 0xfft 0xfft
        0xf2t 0xcbt 0xfft 0xfft
        0xfat 0xcbt 0xfft 0xfft
        0xa5t 0xcct 0xfft 0xfft
        0xaet 0xcct 0xfft 0xfft
        0xc0t 0xcct 0xfft 0xfft
        0xcdt 0xcct 0xfft 0xfft
        0xd8t 0xcct 0xfft 0xfft
        0xd9t 0xcct 0xfft 0xfft
        0xddt 0xcct 0xfft 0xfft
        0xect 0xcct 0xfft 0xfft
        0xf4t 0xcct 0xfft 0xfft
        0xf9t 0xcct 0xfft 0xfft
        0xfct 0xcct 0xfft 0xfft
        0xa8t 0xcdt 0xfft 0xfft
        0xb5t 0xcdt 0xfft 0xfft
        0xb9t 0xcdt 0xfft 0xfft
        0xc4t 0xcdt 0xfft 0xfft
        0xc6t 0xcdt 0xfft 0xfft
        0xcct 0xcdt 0xfft 0xfft
        0xcft 0xcdt 0xfft 0xfft
        0xdat 0xcdt 0xfft 0xfft
        0xe1t 0xcdt 0xfft 0xfft
        0xe3t 0xcdt 0xfft 0xfft
        0xf4t 0xcdt 0xfft 0xfft
        0xfet 0xcdt 0xfft 0xfft
        0xc1t 0xcet 0xfft 0xfft
        0xcbt 0xcet 0xfft 0xfft
        0xcet 0xcet 0xfft 0xfft
        0xd7t 0xcet 0xfft 0xfft
        0xf4t 0xcet 0xfft 0xfft
        0xb9t 0xcft 0xfft 0xfft
        0xc6t 0xcft 0xfft 0xfft
        0xe0t 0xcft 0xfft 0xfft
        0xf4t 0xcft 0xfft 0xfft
        0xa8t 0xd0t 0xfft 0xfft
        0xbdt 0xd0t 0xfft 0xfft
        0xc7t 0xd0t 0xfft 0xfft
        0xd6t 0xd0t 0xfft 0xfft
        0xddt 0xd0t 0xfft 0xfft
        0xe6t 0xd0t 0xfft 0xfft
        0xf9t 0xd0t 0xfft 0xfft
        0xa5t 0xd1t 0xfft 0xfft
        0xabt 0xd1t 0xfft 0xfft
        0xb9t 0xd1t 0xfft 0xfft
        0xc9t 0xd1t 0xfft 0xfft
        0xeat 0xd1t 0xfft 0xfft
        0xfbt 0xd1t 0xfft 0xfft
        0xact 0xd2t 0xfft 0xfft
        0xbbt 0xd2t 0xfft 0xfft
        0xf0t 0xd2t 0xfft 0xfft
        0xa2t 0xd3t 0xfft 0xfft
        0xb4t 0xd3t 0xfft 0xfft
        0xb5t 0xd3t 0xfft 0xfft
        0xc4t 0xd3t 0xfft 0xfft
        0xd9t 0xd3t 0xfft 0xfft
        0xa7t 0xd4t 0xfft 0xfft
        0xbbt 0xd4t 0xfft 0xfft
        0xc5t 0xd4t 0xfft 0xfft
        0xd1t 0xd4t 0xfft 0xfft
        0xd4t 0xd4t 0xfft 0xfft
        0xdbt 0xd4t 0xfft 0xfft
        0xdft 0xd4t 0xfft 0xfft
        0xe2t 0xd4t 0xfft 0xfft
        0xf0t 0xd4t 0xfft 0xfft
        0xf4t 0xd4t 0xfft 0xfft
        0xf5t 0xd4t 0xfft 0xfft
        0xf6t 0xd4t 0xfft 0xfft
        0xfat 0xd4t 0xfft 0xfft
        0xaat 0xd5t 0xfft 0xfft
        0xb0t 0xd5t 0xfft 0xfft
        0xc1t 0xd5t 0xfft 0xfft
        0xd0t 0xd5t 0xfft 0xfft
        0xdat 0xd5t 0xfft 0xfft
        0xe4t 0xd5t 0xfft 0xfft
        0xf4t 0xd5t 0xfft 0xfft
        0xa5t 0xd6t 0xfft 0xfft
        0xd0t 0xd6t 0xfft 0xfft
        0xdbt 0xd6t 0xfft 0xfft
        0xe9t 0xd6t 0xfft 0xfft
        0xa5t 0xd7t 0xfft 0xfft
        0xa7t 0xd7t 0xfft 0xfft
        0xa8t 0xd7t 0xfft 0xfft
        0xaet 0xd7t 0xfft 0xfft
        0xb5t 0xd7t 0xfft 0xfft
        0xbbt 0xd7t 0xfft 0xfft
        0xbdt 0xd7t 0xfft 0xfft
        0xc8t 0xd7t 0xfft 0xfft
        0xd7t 0xd7t 0xfft 0xfft
        0xdet 0xd7t 0xfft 0xfft
        0xe2t 0xd7t 0xfft 0xfft
        0xeat 0xd7t 0xfft 0xfft
        0xect 0xd7t 0xfft 0xfft
        0xf0t 0xd7t 0xfft 0xfft
        0xf2t 0xd7t 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChsAscii(Ljava/lang/String;)I
    .locals 8
    .parameter "chs"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, asc:I
    :try_start_0
    const-string/jumbo v5, "gb2312"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 124
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    array-length v5, v1

    if-gt v5, v7, :cond_0

    array-length v5, v1

    if-gtz v5, :cond_2

    .line 125
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "illegal resource string"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1           #bytes:[B
    :catch_0
    move-exception v2

    .line 136
    .local v2, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ERROR:ChineseSpelling.class-getChsAscii(String chs)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0

    .line 127
    .restart local v1       #bytes:[B
    :cond_2
    :try_start_1
    array-length v5, v1

    if-ne v5, v6, :cond_3

    .line 128
    const/4 v5, 0x0

    aget-byte v0, v1, v5

    .line 130
    :cond_3
    array-length v5, v1

    if-ne v5, v7, :cond_1

    .line 131
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    add-int/lit16 v3, v5, 0x100

    .line 132
    .local v3, hightByte:I
    const/4 v5, 0x1

    aget-byte v5, v1, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit16 v4, v5, 0x100

    .line 133
    .local v4, lowByte:I
    mul-int/lit16 v5, v3, 0x100

    add-int/2addr v5, v4

    const/high16 v6, 0x1

    sub-int v0, v5, v6

    goto :goto_0
.end method

.method public static getInstance()Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->characterParser:Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;

    return-object v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, result:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getChsAscii(Ljava/lang/String;)I

    move-result v0

    .line 147
    .local v0, ascii:I
    if-lez v0, :cond_1

    const/16 v3, 0xa0

    if-ge v0, v3, :cond_1

    .line 148
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_0
    :goto_0
    return-object v2

    .line 150
    :cond_1
    sget-object v3, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->pyvalue:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 151
    sget-object v3, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->pyvalue:[I

    aget v3, v3, v1

    if-gt v3, v0, :cond_2

    .line 152
    sget-object v3, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->pystr:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 153
    goto :goto_0

    .line 150
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getSelling(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "chs"

    .prologue
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->buffer:Ljava/lang/StringBuilder;

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 176
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 165
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 167
    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 169
    const-string/jumbo v2, "unknown"

    .line 174
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v2           #value:Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public getSpelling()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/sortlistview/CharacterParser;->resource:Ljava/lang/String;

    .line 117
    return-void
.end method
