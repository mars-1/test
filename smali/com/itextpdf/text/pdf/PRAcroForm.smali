.class public Lcom/itextpdf/text/pdf/PRAcroForm;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PRAcroForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;
    }
.end annotation


# instance fields
.field fieldByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;",
            ">;"
        }
    .end annotation
.end field

.field fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;",
            ">;"
        }
    .end annotation
.end field

.field reader:Lcom/itextpdf/text/pdf/PdfReader;

.field stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 1
    .parameter "reader"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->fields:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->fieldByName:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    .line 87
    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;
    .locals 1
    .parameter "name"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->fieldByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;

    return-object v0
.end method

.method public getFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->fields:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRefByName(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PRIndirectReference;
    .locals 2
    .parameter "name"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->fieldByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;

    .line 112
    .local v0, fi:Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 113
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;->getRef()Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v1

    goto :goto_0
.end method

.method protected iterateFields(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PRIndirectReference;Ljava/lang/String;)V
    .locals 12
    .parameter "fieldlist"
    .parameter "fieldDict"
    .parameter "title"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 136
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 137
    .local v8, ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 140
    .local v0, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object v6, p2

    .line 141
    .local v6, myFieldDict:Lcom/itextpdf/text/pdf/PRIndirectReference;
    move-object v7, p3

    .line 142
    .local v7, myTitle:Ljava/lang/String;
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    .line 143
    .local v9, tField:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v9, :cond_2

    const/4 v2, 0x1

    .line 145
    .local v2, isFieldDict:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 146
    move-object v6, v8

    .line 147
    if-nez p3, :cond_3

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    :cond_1
    :goto_2
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .line 152
    .local v4, kids:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v4, :cond_4

    .line 153
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PRAcroForm;->pushAttrib(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 154
    invoke-virtual {p0, v4, v6, v7}, Lcom/itextpdf/text/pdf/PRAcroForm;->iterateFields(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PRIndirectReference;Ljava/lang/String;)V

    .line 155
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 143
    .end local v2           #isFieldDict:Z
    .end local v4           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 148
    .restart local v2       #isFieldDict:Z
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 158
    .restart local v4       #kids:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_4
    if-eqz v6, :cond_0

    .line 159
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 160
    .local v5, mergedDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v2, :cond_5

    .line 161
    invoke-virtual {p0, v5, v0}, Lcom/itextpdf/text/pdf/PRAcroForm;->mergeAttrib(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 163
    :cond_5
    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v11, v7}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 164
    new-instance v1, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;

    invoke-direct {v1, v7, v5, v6}, Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 165
    .local v1, fi:Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->fields:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v10, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->fieldByName:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 170
    .end local v0           #dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v1           #fi:Lcom/itextpdf/text/pdf/PRAcroForm$FieldInformation;
    .end local v2           #isFieldDict:Z
    .end local v4           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #mergedDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #myFieldDict:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v7           #myTitle:Ljava/lang/String;
    .end local v8           #ref:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v9           #tField:Lcom/itextpdf/text/pdf/PdfString;
    :cond_6
    return-void
.end method

.method protected mergeAttrib(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 5
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 178
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 179
    .local v3, targ:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 181
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v2, v0

    .line 182
    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 183
    .local v2, key:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->Q:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    :cond_2
    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 191
    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v2           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_3
    return-object v3
.end method

.method protected pushAttrib(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 3
    .parameter "dict"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 201
    .restart local v0       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PRAcroForm;->mergeAttrib(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->stack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method public readAcroForm(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 3
    .parameter "root"

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p1, Lcom/itextpdf/text/pdf/PdfDictionary;->hashMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->hashMap:Ljava/util/HashMap;

    .line 123
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PRAcroForm;->pushAttrib(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 124
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 125
    .local v0, fieldlist:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {p0, v0, v2, v2}, Lcom/itextpdf/text/pdf/PRAcroForm;->iterateFields(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PRIndirectReference;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PRAcroForm;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
