.class public Lorg/apache/commons/net/ftp/FTPFile;
.super Ljava/lang/Object;
.source "FTPFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY_TYPE:I = 0x1

.field public static final EXECUTE_PERMISSION:I = 0x2

.field public static final FILE_TYPE:I = 0x0

.field public static final GROUP_ACCESS:I = 0x1

.field public static final READ_PERMISSION:I = 0x0

.field public static final SYMBOLIC_LINK_TYPE:I = 0x2

.field public static final UNKNOWN_TYPE:I = 0x3

.field public static final USER_ACCESS:I = 0x0

.field public static final WORLD_ACCESS:I = 0x2

.field public static final WRITE_PERMISSION:I = 0x1

.field private static final serialVersionUID:J = 0x7d0cc2180c52bb3cL


# instance fields
.field private _date:Ljava/util/Calendar;

.field private _group:Ljava/lang/String;

.field private _hardLinkCount:I

.field private _link:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private final _permissions:[[Z

.field private _rawListing:Ljava/lang/String;

.field private _size:J

.field private _type:I

.field private _user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    .line 72
    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    .line 73
    iput v2, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    .line 80
    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    .line 81
    iput-object v3, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private formatType()C
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    packed-switch v0, :pswitch_data_0

    .line 421
    const/16 v0, 0x3f

    :goto_0
    return v0

    .line 415
    :pswitch_0
    const/16 v0, 0x2d

    goto :goto_0

    .line 417
    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    .line 419
    :pswitch_2
    const/16 v0, 0x6c

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private permissionToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "access"    # I

    .prologue
    const/16 v2, 0x2d

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 436
    :goto_1
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 429
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 439
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    return-object v0
.end method

.method public getHardLinkCount()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawListing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    return-object v0
.end method

.method public hasPermission(II)Z
    .locals 1
    .param p1, "access"    # I
    .param p2, "permission"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 116
    iget v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolicLink()Z
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnknown()Z
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_group:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setHardLinkCount(I)V
    .locals 0
    .param p1, "links"    # I

    .prologue
    .line 227
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_hardLinkCount:I

    .line 228
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_link:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_name:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setPermission(IIZ)V
    .locals 1
    .param p1, "access"    # I
    .param p2, "permission"    # I
    .param p3, "value"    # Z

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->_permissions:[[Z

    aget-object v0, v0, p1

    aput-boolean p3, v0, p2

    .line 353
    return-void
.end method

.method public setRawListing(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawListing"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_rawListing:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 204
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_size:J

    .line 205
    return-void
.end method

.method public setTimestamp(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 324
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_date:Ljava/util/Calendar;

    .line 325
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 161
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_type:I

    .line 162
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->_user:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public toFormattedString()Ljava/lang/String;
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 393
    .local v0, "fmt":Ljava/util/Formatter;
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFile;->formatType()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-direct {p0, v8}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-direct {p0, v9}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-direct {p0, v6}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v3, " %4d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getHardLinkCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 398
    const-string v3, " %-8s %-8s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getGroup()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getUser()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 399
    const-string v3, " %8d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 400
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v2

    .line 401
    .local v2, "timestamp":Ljava/util/Calendar;
    if-eqz v2, :cond_0

    .line 402
    const-string v3, " %1$tY-%1$tm-%1$td %1$tH:%1$tM:%1$tS"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 403
    const-string v3, " %1$tZ"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 404
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    :cond_0
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getRawListing()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
