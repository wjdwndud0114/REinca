.class public Lcom/inca/security/hb;
.super Lcom/inca/security/ga;
.source "xa"


# instance fields
.field private synthetic IIIIiiIiII:Ljava/lang/String;

.field private synthetic IIIiiiiIII:Ljava/lang/String;

.field private final synthetic IIiIiIIIii:Ljava/lang/String;

.field private synthetic IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

.field private synthetic IiIiIiiIii:Ljava/lang/String;

.field private synthetic IiiIiiiIiI:I

.field private synthetic IiiiiIiiIi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inca/security/ab;I)V
    .locals 3
    .param p1, "arg0"    # Lcom/inca/security/ab;
    .param p2, "arg1"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/inca/security/ga;-><init>()V

    .line 46
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/hb;->IIiIiIIIii:Ljava/lang/String;

    .line 181
    iget-object v0, p1, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    const-string v1, "\u001d-\u000bcTv" #ftp://

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    const-string v1, "u$cJ\u001c_" #FTP://

    invoke-static {v1}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 0
    :cond_0
    iget-object v0, p1, Lcom/inca/security/ab;->IIIiiiiIII:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/hb;->IIIIiiIiII:Ljava/lang/String;

    .line 161
    :cond_1
    iget-object v0, p1, Lcom/inca/security/ab;->IiIiIIIiIi:Ljava/lang/String;

    const-string v1, "v" #/

    invoke-static {v1}, Lcom/inca/security/tb;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/inca/security/ab;->IiIiIIIiIi:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/inca/security/hb;->IiiiiIiiIi:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lcom/inca/security/ab;->IiiIiiiIiI:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/hb;->IiIiIiiIii:Ljava/lang/String;

    .line 117
    iget-object v0, p1, Lcom/inca/security/ab;->IIiIiIIIii:Ljava/lang/String;

    iput-object v0, p0, Lcom/inca/security/hb;->IIIiiiiIII:Ljava/lang/String;

    .line 22
    iget v0, p1, Lcom/inca/security/ab;->IiiiiIiiIi:I

    iput v0, p0, Lcom/inca/security/hb;->IiiIiiiIiI:I

    .line 105
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object v0, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    .line 120
    iget-object v0, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p2}, Lorg/apache/commons/net/ftp/FTPClient;->setConnectTimeout(I)V

    .line 180
    iget-object v0, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPClient;->setBufferSize(I)V

    .line 195
    return-void

    .line 161
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/inca/security/ab;->IiIiIIIiIi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inca/security/hb;->IIiIiIIIii:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private synthetic IiiiIIIIii(Ljava/lang/String;)Z
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 159
    .line 126
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v1, :cond_0

    .line 188
    :goto_0
    return v0

    .line 33
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/inca/security/hb;->IiiiiIiiIi:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 29
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public IiiiIIIIii()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public IiiiIIIIii()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    .line 189
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 15
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v2, p0, Lcom/inca/security/hb;->IIIIiiIiII:Ljava/lang/String;

    iget v3, p0, Lcom/inca/security/hb;->IiiIiiiIiI:I

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v1

    .line 167
    invoke-static {v1}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 54
    :try_start_1
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    iget-object v2, p0, Lcom/inca/security/hb;->IiIiIiiIii:Ljava/lang/String;

    iget-object v3, p0, Lcom/inca/security/hb;->IIIiiiiIII:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 10
    iget-object v1, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    const-string v2, "%g6\u001eH" #UTF-8

    invoke-static {v2}, Lcom/inca/security/yc;->IiiiIIIIii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 47
    invoke-virtual {p0}, Lcom/inca/security/hb;->IiiiIIIIii()V

    goto :goto_0

    .line 194
    :catch_1
    move-exception v1

    goto :goto_0

    .line 108
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 175
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 152
    if-eqz v1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/inca/security/hb;->IiIiIIIiIi:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v2, p1, v1}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v0

    .line 174
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    return v0

    .line 130
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/inca/security/hb;->IiiiIIIIii()Z

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inca/security/hb;->IiiiiIiiIi:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inca/security/hb;->IiiiIIIIii(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/inca/security/hb;->IiiiIIIIii(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const/4 v0, 0x1

    goto :goto_0
.end method
