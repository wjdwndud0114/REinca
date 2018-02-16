.class public final Lcom/inca/security/ka;
.super Ljava/lang/Object;
.source "da"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inca/security/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public synthetic IIIIiiIiII:Ljava/lang/String;

.field public synthetic IIIiiiiIII:Ljava/util/ArrayList;

.field public synthetic IIiIIIIIii:Ljava/lang/String;

.field public synthetic IIiIiIIIii:Ljava/io/File;

.field public synthetic IIiiIiIIii:Z

.field public synthetic IiIiIIIiIi:Ljava/lang/String;

.field public synthetic IiIiIiiIii:I

.field public synthetic IiiIiiiIiI:Ljava/net/CookieManager;

.field public synthetic IiiiiIiiIi:[B

.field public synthetic iiIIIiiiiI:Ljava/lang/String;

.field public synthetic iiiiIIIiii:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x0

    const/16 v1, 0xbb8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/inca/security/ka;->iiiiIIIiii:Ljava/util/Map;

    .line 26
    iput v1, p0, Lcom/inca/security/ka;->IiIiIiiIii:I

    .line 139
    iput-boolean v0, p0, Lcom/inca/security/ka;->IIiiIiIIii:Z

    .line 199
    return-void
.end method


# virtual methods
.method public IiiiIIIIii(I)Lcom/inca/security/ka;
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/inca/security/ka;->IiIiIiiIii:I

    .line 11
    return-object p0
.end method

.method public IiiiIIIIii(Ljava/lang/String;)Lcom/inca/security/ka;
    .locals 6
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 50
    .line 126
    const-string v1, "p\u001be"

    invoke-static {v1}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 12
    if-eq v1, v5, :cond_4

    .line 114
    add-int/lit8 v1, v1, 0x3

    .line 33
    :goto_0
    if-eqz v1, :cond_0

    .line 164
    iput-object p1, p0, Lcom/inca/security/ka;->IIiIIIIIii:Ljava/lang/String;

    move-object v0, p1

    .line 66
    .end local p1    # "arg0":Ljava/lang/String;
    .local v0, "arg0":Ljava/lang/String;
    :goto_1
    const-string v2, "p"

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 183
    if-eq v2, v5, :cond_2

    .line 5
    const-string v3, "l"

    invoke-static {v3}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 133
    if-eq v3, v5, :cond_1

    .line 170
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/ka;->IiIiIIIiIi:Ljava/lang/String;

    .line 163
    add-int/lit8 v1, v2, 0x1

    .line 189
    add-int/lit8 v1, v3, 0x1

    .line 109
    :goto_2
    return-object p0

    .line 188
    .end local v0    # "arg0":Ljava/lang/String;
    .restart local p1    # "arg0":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+7730yll"

    invoke-static {v4}, Lcom/inca/security/x;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inca/security/ka;->IIiIIIIIii:Ljava/lang/String;

    move-object v0, p1

    .line 66
    .end local p1    # "arg0":Ljava/lang/String;
    .restart local v0    # "arg0":Ljava/lang/String;
    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/ka;->IiIiIIIiIi:Ljava/lang/String;

    .line 68
    add-int/lit8 v1, v3, 0x1

    .line 108
    goto :goto_2

    .line 194
    :cond_2
    const-string v2, "e"

    invoke-static {v2}, Lcom/inca/security/ua;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 202
    if-eq v2, v5, :cond_3

    .line 103
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/ka;->IiIiIIIiIi:Ljava/lang/String;

    .line 13
    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inca/security/ka;->IiIiIIIiIi:Ljava/lang/String;

    .line 69
    add-int/lit8 v1, v2, 0x1

    goto :goto_2

    .end local v0    # "arg0":Ljava/lang/String;
    .restart local p1    # "arg0":Ljava/lang/String;
    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public IiiiIIIIii(Ljava/lang/String;Ljava/io/File;)Lcom/inca/security/ka;
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/io/File;

    .prologue
    .line 201
    iput-object p2, p0, Lcom/inca/security/ka;->IIiIiIIIii:Ljava/io/File;

    .line 63
    iput-object p1, p0, Lcom/inca/security/ka;->iiIIIiiiiI:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Lcom/inca/security/ka;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inca/security/ka;->iiiiIIIiii:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public IiiiIIIIii(Ljava/net/CookieManager;)Lcom/inca/security/ka;
    .locals 0
    .param p1, "arg0"    # Ljava/net/CookieManager;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inca/security/ka;->IiiIiiiIiI:Ljava/net/CookieManager;

    .line 14
    return-object p0
.end method

.method public IiiiIIIIii(Z)Lcom/inca/security/ka;
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/inca/security/ka;->IIiiIiIIii:Z

    .line 184
    return-object p0
.end method

.method public IiiiIIIIii([B)Lcom/inca/security/ka;
    .locals 0
    .param p1, "arg0"    # [B

    .prologue
    .line 29
    iput-object p1, p0, Lcom/inca/security/ka;->IiiiiIiiIi:[B

    .line 128
    return-object p0
.end method

.method public IiiiIIIIii()Lcom/inca/security/xa;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/inca/security/xa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inca/security/xa;-><init>(Lcom/inca/security/ka;Lcom/inca/security/qa;)V

    return-object v0
.end method

.method public iIiIIiIIIi(Ljava/lang/String;)Lcom/inca/security/ka;
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/inca/security/ka;->IIIIiiIiII:Ljava/lang/String;

    .line 39
    return-object p0
.end method
