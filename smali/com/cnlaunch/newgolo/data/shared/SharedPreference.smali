.class public Lcom/cnlaunch/newgolo/data/shared/SharedPreference;
.super Ljava/lang/Object;
.source "SharedPreference.java"


# static fields
.field private static mSharedPreference:Lcom/cnlaunch/newgolo/data/shared/SharedPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/newgolo/data/shared/SharedPreference;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->mSharedPreference:Lcom/cnlaunch/newgolo/data/shared/SharedPreference;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;

    invoke-direct {v0}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;-><init>()V

    sput-object v0, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->mSharedPreference:Lcom/cnlaunch/newgolo/data/shared/SharedPreference;

    .line 21
    :cond_0
    sget-object v0, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->mSharedPreference:Lcom/cnlaunch/newgolo/data/shared/SharedPreference;

    return-object v0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"

    .prologue
    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 41
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "c"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 46
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getContains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"

    .prologue
    .line 50
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getFloat(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 1
    .parameter "c"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 81
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 76
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "c"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 60
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 55
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 6
    .parameter "c"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 72
    const-string/jumbo v2, "EMenu"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 67
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p3, p4, p5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "c"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 37
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 32
    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"

    .prologue
    .line 93
    if-eqz p3, :cond_1

    array-length v4, p3

    if-lez v4, :cond_1

    .line 94
    array-length v1, p3

    .line 95
    .local v1, lenght:I
    new-array v3, v1, [Ljava/lang/String;

    .line 96
    .local v3, str:[Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 97
    .local v2, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 102
    .end local v0           #i:I
    .end local v1           #lenght:I
    .end local v2           #sp:Landroid/content/SharedPreferences;
    .end local v3           #str:[Ljava/lang/String;
    :goto_1
    return-object v3

    .line 98
    .restart local v0       #i:I
    .restart local v1       #lenght:I
    .restart local v2       #sp:Landroid/content/SharedPreferences;
    .restart local v3       #str:[Ljava/lang/String;
    :cond_0
    aget-object v4, p3, v0

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v0           #i:I
    .end local v1           #lenght:I
    .end local v2           #sp:Landroid/content/SharedPreferences;
    .end local v3           #str:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getStrings(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "c"
    .parameter "key"

    .prologue
    .line 107
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->getString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 129
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public saveBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 133
    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public saveBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "c"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 140
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->saveBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public saveInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "c"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 157
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->saveInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public saveInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 150
    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 151
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-void
.end method

.method public saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 125
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "prefsName"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 118
    const/4 v2, 0x2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public saveString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "prefsName"
    .parameter "name"
    .parameter "values"

    .prologue
    .line 167
    if-eqz p3, :cond_0

    array-length v4, p3

    if-lez v4, :cond_0

    .line 168
    array-length v2, p3

    .line 169
    .local v2, length:I
    const/4 v4, 0x2

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 170
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 171
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 172
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #sp:Landroid/content/SharedPreferences;
    :cond_1
    aget-object v4, p3, v1

    if-eqz v4, :cond_2

    aget-object v4, p4, v1

    if-eqz v4, :cond_2

    .line 173
    aget-object v4, p3, v1

    aget-object v5, p4, v1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public saveString(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "name"
    .parameter "values"

    .prologue
    .line 181
    const-string/jumbo v0, "EMenu"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/cnlaunch/newgolo/data/shared/SharedPreference;->saveString(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 182
    return-void
.end method
