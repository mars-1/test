.class public Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;
.super Ljava/lang/Object;
.source "X431UserDTO_ja.java"


# instance fields
.field private address:Ljava/lang/String;

.field private birthdays:J

.field private companyName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private familyPhone:Ljava/lang/String;

.field private fax:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private officePhone:Ljava/lang/String;

.field private sex:I

.field private userName:Ljava/lang/String;

.field private zipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "userName"
    .parameter "email"
    .parameter "mobile"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "sex"
    .parameter "birthdays"
    .parameter "familyPhone"
    .parameter "officePhone"
    .parameter "fax"
    .parameter "companyName"
    .parameter "address"
    .parameter "zipCode"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->userName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->email:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->mobile:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->firstName:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->lastName:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->sex:I

    .line 30
    iput-wide p7, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->birthdays:J

    .line 31
    iput-object p9, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->familyPhone:Ljava/lang/String;

    .line 32
    iput-object p10, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->officePhone:Ljava/lang/String;

    .line 33
    iput-object p11, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->fax:Ljava/lang/String;

    .line 34
    iput-object p12, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->companyName:Ljava/lang/String;

    .line 35
    iput-object p13, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->address:Ljava/lang/String;

    .line 36
    iput-object p14, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->zipCode:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthdays()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->birthdays:J

    return-wide v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->familyPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getFax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->fax:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOfficePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->officePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->sex:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->zipCode:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->address:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setBirthdays(J)V
    .locals 0
    .parameter "birthdays"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->birthdays:J

    .line 79
    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0
    .parameter "companyName"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->companyName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->email:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setFamilyPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "familyPhone"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->familyPhone:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setFax(Ljava/lang/String;)V
    .locals 0
    .parameter "fax"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->fax:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .parameter "firstName"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->firstName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .parameter "lastName"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->lastName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->mobile:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setOfficePhone(Ljava/lang/String;)V
    .locals 0
    .parameter "officePhone"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->officePhone:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setSex(I)V
    .locals 0
    .parameter "sex"

    .prologue
    .line 72
    iput p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->sex:I

    .line 73
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->userName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 0
    .parameter "zipCode"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/user/model/X431UserDTO_ja;->zipCode:Ljava/lang/String;

    .line 115
    return-void
.end method
