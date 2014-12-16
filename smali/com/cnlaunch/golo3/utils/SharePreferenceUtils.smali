.class public Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;
.super Ljava/lang/Object;
.source "SharePreferenceUtils.java"


# instance fields
.field spInfo:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "user_info"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "userid"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    .line 21
    return-void
.end method


# virtual methods
.method public getBuildId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "buildId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "buildName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "cityId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "cityName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHouseId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "houseId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHouseName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "houseName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFirstLogin()Z
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "isFirstLogin"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsLoginUp()Z
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "isLoginUp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsProtection()Z
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "protection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIsVisitor()Z
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "isVisitor"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastMessageTime()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "last_message"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLoginAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "account"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginMode()I
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "loginMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getResidentialId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "residentialId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResidentialName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "residentialName"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveLastMessageTime(Ljava/lang/Long;)V
    .locals 4
    .parameter "time"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_message"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 2
    .parameter "buildId"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "buildId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method

.method public setBuildName(Ljava/lang/String;)V
    .locals 2
    .parameter "buildName"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "buildName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    return-void
.end method

.method public setCityId(Ljava/lang/String;)V
    .locals 2
    .parameter "cityId"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cityId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 2
    .parameter "cityName"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cityName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public setHouseId(Ljava/lang/String;)V
    .locals 2
    .parameter "houseId"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "houseId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    return-void
.end method

.method public setHouseName(Ljava/lang/String;)V
    .locals 2
    .parameter "houseName"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "houseName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method public setIsFirstLogin(Z)V
    .locals 2
    .parameter "isFirstLogin"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isFirstLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public setIsLoginUp(Z)V
    .locals 2
    .parameter "isLoginUp"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isLoginUp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public setIsProtection(Z)V
    .locals 2
    .parameter "protection"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "protection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method

.method public setIsVisitor(Z)V
    .locals 2
    .parameter "isVisitor"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isVisitor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    return-void
.end method

.method public setLoginAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    return-void
.end method

.method public setLoginMode(I)V
    .locals 2
    .parameter "loginMode"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "loginMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method public setResidentialId(Ljava/lang/String;)V
    .locals 2
    .parameter "residentialId"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "residentialId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public setResidentialName(Ljava/lang/String;)V
    .locals 2
    .parameter "residentialName"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/SharePreferenceUtils;->spInfo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "residentialName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method
