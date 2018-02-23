.class public Lcom/inca/security/jb;
.super Ljava/lang/Object;
.source "va"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IiiiIIIIii(Lcom/inca/security/ab;I)Lcom/inca/security/ga;
    .locals 2
    .param p0, "arg0"    # Lcom/inca/security/ab;
    .param p1, "arg1"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    const-string v1, "\u0011/\r+cTv" #HTTP://

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    const-string v1, "\u0018G\u0004CJ\u001c_" #http://

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Lcom/inca/security/ta;

    invoke-direct {v0, p0, p1}, Lcom/inca/security/ta;-><init>(Lcom/inca/security/ab;I)V

    .line 138
    :goto_0
    return-object v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    const-string v1, "=\r+cTv" #FTP://

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    const-string v1, "U\u0004CJ\u001c_" #ftp://

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    :cond_2
    new-instance v0, Lcom/inca/security/hb;

    invoke-direct {v0, p0, p1}, Lcom/inca/security/hb;-><init>(Lcom/inca/security/ab;I)V

    goto :goto_0

    .line 162
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v1, "\u001d-\u000bcTv" #ftp://

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/inca/security/hb;

    invoke-direct {v0, p0, p1}, Lcom/inca/security/hb;-><init>(Lcom/inca/security/ab;I)V

    goto :goto_0
.end method

.method public static IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v3, v1, -0x1

    xor-int/lit8 v0, v0, 0x1b

    int-to-char v0, v0

    aput-char v0, v2, v1

    if-ltz v3, :cond_0

    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x2c

    int-to-char v1, v1

    aput-char v1, v2, v3

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
