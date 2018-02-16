.class public final Lextern/okhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lextern/okhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lextern/okhttp3/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;

.field port:I

.field scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    const-string v0, ""

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 949
    const-string v0, ""

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 951
    const/4 v0, -0x1

    iput v0, p0, Lextern/okhttp3/HttpUrl$Builder;->port:I

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 957
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "pathSegments"    # Ljava/lang/String;
    .param p2, "alreadyEncoded"    # Z

    .prologue
    .line 1057
    const/4 v2, 0x0

    .line 1059
    .local v2, "offset":I
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/\\"

    invoke-static {p1, v2, v0, v1}, Lextern/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1060
    .local v3, "segmentEnd":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    .local v4, "addTrailingSlash":Z
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1061
    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1062
    add-int/lit8 v2, v3, 0x1

    .line 1063
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 1064
    return-object p0

    .line 1060
    .end local v4    # "addTrailingSlash":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v4, 0x0

    .line 1555
    invoke-static {p0, p1, p2, v4}, Lextern/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 1558
    .local v2, "percentDecoded":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1560
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Lextern/okhttp3/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 1563
    .local v1, "inetAddress":Ljava/net/InetAddress;
    :goto_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    .line 1569
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_1
    return-object v3

    .line 1560
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v4, v3}, Lextern/okhttp3/HttpUrl$Builder;->decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    .line 1564
    .restart local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1565
    .local v0, "address":[B
    array-length v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    invoke-static {v0}, Lextern/okhttp3/HttpUrl$Builder;->inet6AddressToAscii([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1566
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1569
    .end local v0    # "address":[B
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :cond_3
    invoke-static {v2}, Lextern/okhttp3/internal/Util;->domainToAscii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private static decodeIpv4Suffix(Ljava/lang/String;II[BI)Z
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I
    .param p3, "address"    # [B
    .param p4, "addressOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1646
    move v0, p4

    .line 1648
    .local v0, "b":I
    move v5, p1

    .local v5, "i":I
    move v1, v0

    .end local v0    # "b":I
    .local v1, "b":I
    :goto_0
    if-ge v5, p2, :cond_6

    .line 1649
    array-length v8, p3

    if-ne v1, v8, :cond_1

    .line 1675
    :cond_0
    :goto_1
    return v7

    .line 1652
    :cond_1
    if-eq v1, p4, :cond_2

    .line 1653
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_0

    .line 1654
    add-int/lit8 v5, v5, 0x1

    .line 1658
    :cond_2
    const/4 v6, 0x0

    .line 1659
    .local v6, "value":I
    move v4, v5

    .line 1660
    .local v4, "groupOffset":I
    :goto_2
    if-ge v5, p2, :cond_3

    .line 1661
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1662
    .local v2, "c":C
    const/16 v8, 0x30

    if-lt v2, v8, :cond_3

    const/16 v8, 0x39

    if-le v2, v8, :cond_4

    .line 1667
    .end local v2    # "c":C
    :cond_3
    sub-int v3, v5, v4

    .line 1668
    .local v3, "groupLength":I
    if-eqz v3, :cond_0

    .line 1671
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "b":I
    .restart local v0    # "b":I
    int-to-byte v8, v6

    aput-byte v8, p3, v1

    move v1, v0

    .line 1672
    .end local v0    # "b":I
    .restart local v1    # "b":I
    goto :goto_0

    .line 1663
    .end local v3    # "groupLength":I
    .restart local v2    # "c":C
    :cond_4
    if-nez v6, :cond_5

    if-ne v4, v5, :cond_0

    .line 1664
    :cond_5
    mul-int/lit8 v8, v6, 0xa

    add-int/2addr v8, v2

    add-int/lit8 v6, v8, -0x30

    .line 1665
    const/16 v8, 0xff

    if-gt v6, v8, :cond_0

    .line 1660
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1674
    .end local v2    # "c":C
    .end local v4    # "groupOffset":I
    .end local v6    # "value":I
    :cond_6
    add-int/lit8 v8, p4, 0x4

    if-ne v1, v8, :cond_0

    .line 1675
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private static decodeIpv6(Ljava/lang/String;II)Ljava/net/InetAddress;
    .locals 15
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1574
    const/16 v12, 0x10

    new-array v1, v12, [B

    .line 1575
    .local v1, "address":[B
    const/4 v2, 0x0

    .line 1576
    .local v2, "b":I
    const/4 v5, -0x1

    .line 1577
    .local v5, "compress":I
    const/4 v8, -0x1

    .line 1579
    .local v8, "groupOffset":I
    move/from16 v10, p1

    .local v10, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v10, v0, :cond_2

    .line 1580
    array-length v12, v1

    if-ne v2, v12, :cond_0

    const/4 v12, 0x0

    .line 1637
    :goto_1
    return-object v12

    .line 1583
    :cond_0
    add-int/lit8 v12, v10, 0x2

    move/from16 v0, p2

    if-gt v12, v0, :cond_3

    const-string v12, "::"

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1585
    const/4 v12, -0x1

    if-eq v5, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    .line 1586
    :cond_1
    add-int/lit8 v10, v10, 0x2

    .line 1587
    add-int/lit8 v2, v2, 0x2

    .line 1588
    move v5, v2

    .line 1589
    move/from16 v0, p2

    if-ne v10, v0, :cond_4

    .line 1630
    :cond_2
    :goto_2
    array-length v12, v1

    if-eq v2, v12, :cond_d

    .line 1631
    const/4 v12, -0x1

    if-ne v5, v12, :cond_c

    const/4 v12, 0x0

    goto :goto_1

    .line 1590
    :cond_3
    if-eqz v2, :cond_4

    .line 1592
    const-string v12, ":"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1593
    add-int/lit8 v10, v10, 0x1

    .line 1605
    :cond_4
    const/4 v11, 0x0

    .line 1606
    .local v11, "value":I
    move v8, v10

    .line 1607
    :goto_3
    move/from16 v0, p2

    if-ge v10, v0, :cond_5

    .line 1608
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1609
    .local v4, "c":C
    invoke-static {v4}, Lextern/okhttp3/HttpUrl;->decodeHexDigit(C)I

    move-result v9

    .line 1610
    .local v9, "hexDigit":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_a

    .line 1613
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    :cond_5
    sub-int v7, v10, v8

    .line 1614
    .local v7, "groupLength":I
    if-eqz v7, :cond_6

    const/4 v12, 0x4

    if-le v7, v12, :cond_b

    :cond_6
    const/4 v12, 0x0

    goto :goto_1

    .line 1594
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_7
    const-string v12, "."

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0, v10, v12, v13, v14}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1596
    add-int/lit8 v12, v2, -0x2

    move/from16 v0, p2

    invoke-static {p0, v8, v0, v1, v12}, Lextern/okhttp3/HttpUrl$Builder;->decodeIpv4Suffix(Ljava/lang/String;II[BI)Z

    move-result v12

    if-nez v12, :cond_8

    const/4 v12, 0x0

    goto :goto_1

    .line 1597
    :cond_8
    add-int/lit8 v2, v2, 0x2

    .line 1598
    goto :goto_2

    .line 1600
    :cond_9
    const/4 v12, 0x0

    goto :goto_1

    .line 1611
    .restart local v4    # "c":C
    .restart local v9    # "hexDigit":I
    .restart local v11    # "value":I
    :cond_a
    shl-int/lit8 v12, v11, 0x4

    add-int v11, v12, v9

    .line 1607
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1617
    .end local v4    # "c":C
    .end local v9    # "hexDigit":I
    .restart local v7    # "groupLength":I
    :cond_b
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "b":I
    .local v3, "b":I
    ushr-int/lit8 v12, v11, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    .line 1618
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "b":I
    .restart local v2    # "b":I
    and-int/lit16 v12, v11, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    goto/16 :goto_0

    .line 1632
    .end local v7    # "groupLength":I
    .end local v11    # "value":I
    :cond_c
    array-length v12, v1

    sub-int v13, v2, v5

    sub-int/2addr v12, v13

    sub-int v13, v2, v5

    invoke-static {v1, v5, v1, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1633
    array-length v12, v1

    sub-int/2addr v12, v2

    add-int/2addr v12, v5

    const/4 v13, 0x0

    invoke-static {v1, v5, v12, v13}, Ljava/util/Arrays;->fill([BIIB)V

    .line 1637
    :cond_d
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto/16 :goto_1

    .line 1638
    :catch_0
    move-exception v6

    .line 1639
    .local v6, "e":Ljava/net/UnknownHostException;
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
.end method

.method private static inet6AddressToAscii([B)Ljava/lang/String;
    .locals 12
    .param p0, "address"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x3a

    .line 1680
    const/4 v5, -0x1

    .line 1681
    .local v5, "longestRunOffset":I
    const/4 v4, 0x0

    .line 1682
    .local v4, "longestRunLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_2

    .line 1683
    move v1, v3

    .line 1684
    .local v1, "currentRunOffset":I
    :goto_1
    if-ge v3, v11, :cond_0

    aget-byte v7, p0, v3

    if-nez v7, :cond_0

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_0

    .line 1685
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1687
    :cond_0
    sub-int v0, v3, v1

    .line 1688
    .local v0, "currentRunLength":I
    if-le v0, v4, :cond_1

    .line 1689
    move v5, v1

    .line 1690
    move v4, v0

    .line 1682
    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1695
    .end local v0    # "currentRunLength":I
    .end local v1    # "currentRunOffset":I
    :cond_2
    new-instance v6, Lextern/okio/Buffer;

    invoke-direct {v6}, Lextern/okio/Buffer;-><init>()V

    .line 1696
    .local v6, "result":Lextern/okio/Buffer;
    const/4 v3, 0x0

    :cond_3
    :goto_2
    array-length v7, p0

    if-ge v3, v7, :cond_6

    .line 1697
    if-ne v3, v5, :cond_4

    .line 1698
    invoke-virtual {v6, v10}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 1699
    add-int/2addr v3, v4

    .line 1700
    if-ne v3, v11, :cond_3

    invoke-virtual {v6, v10}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    goto :goto_2

    .line 1702
    :cond_4
    if-lez v3, :cond_5

    invoke-virtual {v6, v10}, Lextern/okio/Buffer;->writeByte(I)Lextern/okio/Buffer;

    .line 1703
    :cond_5
    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int v2, v7, v8

    .line 1704
    .local v2, "group":I
    int-to-long v8, v2

    invoke-virtual {v6, v8, v9}, Lextern/okio/Buffer;->writeHexadecimalUnsignedLong(J)Lextern/okio/Buffer;

    .line 1705
    add-int/lit8 v3, v3, 0x2

    .line 1706
    goto :goto_2

    .line 1708
    .end local v2    # "group":I
    :cond_6
    invoke-virtual {v6}, Lextern/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1460
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 1464
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/4 v11, -0x1

    .line 1714
    :try_start_0
    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v10

    .line 1715
    .local v10, "portString":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1716
    .local v9, "i":I
    if-lez v9, :cond_0

    const v0, 0xffff

    if-gt v9, v0, :cond_0

    .line 1719
    .end local v9    # "i":I
    .end local v10    # "portString":Ljava/lang/String;
    :goto_0
    return v9

    .restart local v9    # "i":I
    .restart local v10    # "portString":Ljava/lang/String;
    :cond_0
    move v9, v11

    .line 1717
    goto :goto_0

    .line 1718
    .end local v9    # "i":I
    .end local v10    # "portString":Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/NumberFormatException;
    move v9, v11

    .line 1719
    goto :goto_0
.end method

.method private pop()V
    .locals 4

    .prologue
    .line 1481
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1484
    .local v0, "removed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1485
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1489
    :goto_0
    return-void

    .line 1487
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1538
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1539
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1538
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1541
    :cond_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    .line 1542
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_2
    move v0, p2

    .line 1549
    .end local v0    # "i":I
    :sswitch_1
    return v0

    .line 1539
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "addTrailingSlash"    # Z
    .param p5, "alreadyEncoded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1440
    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v7}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 1442
    .local v8, "segment":Ljava/lang/String;
    invoke-direct {p0, v8}, Lextern/okhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    invoke-direct {p0, v8}, Lextern/okhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1446
    invoke-direct {p0}, Lextern/okhttp3/HttpUrl$Builder;->pop()V

    goto :goto_0

    .line 1449
    :cond_2
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1450
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1454
    :goto_1
    if-eqz p4, :cond_0

    .line 1455
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1452
    :cond_3
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3
    .param p1, "canonicalName"    # Ljava/lang/String;

    .prologue
    .line 1178
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1179
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1181
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1182
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1183
    const/4 v1, 0x0

    iput-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1188
    :cond_0
    return-void

    .line 1178
    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 8
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    .prologue
    const/4 v5, 0x1

    .line 1412
    if-ne p2, p3, :cond_1

    .line 1435
    :cond_0
    return-void

    .line 1416
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1417
    .local v6, "c":C
    const/16 v0, 0x2f

    if-eq v6, v0, :cond_2

    const/16 v0, 0x5c

    if-ne v6, v0, :cond_4

    .line 1419
    :cond_2
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1420
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    add-int/lit8 p2, p2, 0x1

    .line 1428
    :goto_0
    move v2, p2

    .local v2, "i":I
    :cond_3
    :goto_1
    if-ge v2, p3, :cond_0

    .line 1429
    const-string v0, "/\\"

    invoke-static {p1, v2, p3, v0}, Lextern/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1430
    .local v3, "pathSegmentDelimiterOffset":I
    if-ge v3, p3, :cond_5

    move v4, v5

    .local v4, "segmentHasTrailingSlash":Z
    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 1431
    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1432
    move v2, v3

    .line 1433
    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1424
    .end local v2    # "i":I
    .end local v3    # "pathSegmentDelimiterOffset":I
    .end local v4    # "segmentHasTrailingSlash":Z
    :cond_4
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v7, ""

    invoke-interface {v0, v1, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1430
    .restart local v2    # "i":I
    .restart local v3    # "pathSegmentDelimiterOffset":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 10
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v9, 0x7a

    const/16 v8, 0x61

    const/16 v7, 0x5a

    const/16 v6, 0x41

    const/4 v3, -0x1

    .line 1496
    sub-int v4, p2, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    move v2, v3

    .line 1518
    :cond_0
    :goto_0
    return v2

    .line 1498
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1499
    .local v1, "c0":C
    if-lt v1, v8, :cond_2

    if-le v1, v9, :cond_4

    :cond_2
    if-lt v1, v6, :cond_3

    if-le v1, v7, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    .line 1501
    :cond_4
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_a

    .line 1502
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1504
    .local v0, "c":C
    if-lt v0, v8, :cond_5

    if-le v0, v9, :cond_8

    :cond_5
    if-lt v0, v6, :cond_6

    if-le v0, v7, :cond_8

    :cond_6
    const/16 v4, 0x30

    if-lt v0, v4, :cond_7

    const/16 v4, 0x39

    if-le v0, v4, :cond_8

    :cond_7
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_8

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_8

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_9

    .line 1501
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1511
    :cond_9
    const/16 v4, 0x3a

    if-eq v0, v4, :cond_0

    move v2, v3

    .line 1514
    goto :goto_0

    .end local v0    # "c":C
    :cond_a
    move v2, v3

    .line 1518
    goto :goto_0
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "limit"    # I

    .prologue
    .line 1523
    const/4 v1, 0x0

    .line 1524
    .local v1, "slashCount":I
    :goto_0
    if-ge p1, p2, :cond_1

    .line 1525
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1526
    .local v0, "c":C
    const/16 v2, 0x5c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 1527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1528
    add-int/lit8 p1, p1, 0x1

    .line 1532
    goto :goto_0

    .line 1533
    .end local v0    # "c":C
    :cond_1
    return v1
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1037
    if-nez p1, :cond_0

    .line 1038
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1041
    return-object p0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "encodedPathSegments"    # Ljava/lang/String;

    .prologue
    .line 1050
    if-nez p1, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1053
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lextern/okhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1138
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1140
    :cond_1
    iget-object v6, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    iget-object v6, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1145
    return-object p0

    .line 1142
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addPathSegment(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1022
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lextern/okhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1024
    return-object p0
.end method

.method public addPathSegments(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "pathSegments"    # Ljava/lang/String;

    .prologue
    .line 1032
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lextern/okhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lextern/okhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1126
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1128
    :cond_1
    iget-object v6, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    iget-object v6, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz p2, :cond_2

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    return-object p0

    .line 1130
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public build()Lextern/okhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 1231
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_1
    new-instance v0, Lextern/okhttp3/HttpUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lextern/okhttp3/HttpUrl;-><init>(Lextern/okhttp3/HttpUrl$Builder;Lextern/okhttp3/HttpUrl$1;)V

    return-object v0
.end method

.method effectivePort()I
    .locals 2

    .prologue
    .line 1018
    iget v0, p0, Lextern/okhttp3/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lextern/okhttp3/HttpUrl$Builder;->port:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lextern/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public encodedFragment(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedFragment"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1198
    if-eqz p1, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1201
    return-object p0

    .line 1198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodedPassword(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedPassword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 993
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 996
    return-object p0
.end method

.method public encodedPath(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "encodedPath"    # Ljava/lang/String;

    .prologue
    .line 1100
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lextern/okhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1105
    return-object p0
.end method

.method public encodedQuery(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedQuery"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1117
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1121
    return-object p0

    .line 1117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encodedUsername(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedUsername"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 980
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 983
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1191
    if-eqz p1, :cond_0

    const-string v1, ""

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1194
    return-object p0

    .line 1191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public host(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 1004
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "host == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1005
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v2}, Lextern/okhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "encoded":Ljava/lang/String;
    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1007
    :cond_1
    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1008
    return-object p0
.end method

.method parse(Lextern/okhttp3/HttpUrl;Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder$ParseResult;
    .locals 28
    .param p1, "base"    # Lextern/okhttp3/HttpUrl;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    .line 1289
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lextern/okhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v5

    .line 1290
    .local v5, "pos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p2

    invoke-static {v0, v5, v3}, Lextern/okhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v23

    .line 1293
    .local v23, "limit":I
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lextern/okhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v26

    .line 1294
    .local v26, "schemeDelimiterOffset":I
    const/4 v3, -0x1

    move/from16 v0, v26

    if-eq v0, v3, :cond_3

    .line 1295
    const/4 v4, 0x1

    const-string v6, "https:"

    const/4 v7, 0x0

    const/4 v8, 0x6

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1296
    const-string v3, "https"

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1297
    const-string v3, "https:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    .line 1311
    :goto_0
    const/16 v22, 0x0

    .line 1312
    .local v22, "hasUsername":Z
    const/16 v21, 0x0

    .line 1313
    .local v21, "hasPassword":Z
    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lextern/okhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v27

    .line 1314
    .local v27, "slashCount":I
    const/4 v3, 0x2

    move/from16 v0, v27

    if-ge v0, v3, :cond_0

    if-eqz p1, :cond_0

    # getter for: Lextern/okhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lextern/okhttp3/HttpUrl;->access$100(Lextern/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1324
    :cond_0
    add-int v5, v5, v27

    .line 1327
    :goto_1
    const-string v3, "@/\\?#"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1, v3}, Lextern/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v20

    .line 1328
    .local v20, "componentDelimiterOffset":I
    move/from16 v0, v20

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 1331
    .local v18, "c":I
    :goto_2
    sparse-switch v18, :sswitch_data_0

    goto :goto_1

    .line 1361
    :sswitch_0
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v5, v1}, Lextern/okhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v25

    .line 1362
    .local v25, "portColonOffset":I
    add-int/lit8 v3, v25, 0x1

    move/from16 v0, v20

    if-ge v3, v0, :cond_9

    .line 1363
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v5, v1}, Lextern/okhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1364
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v3, v1}, Lextern/okhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lextern/okhttp3/HttpUrl$Builder;->port:I

    .line 1365
    move-object/from16 v0, p0

    iget v3, v0, Lextern/okhttp3/HttpUrl$Builder;->port:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    sget-object v3, Lextern/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lextern/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1407
    .end local v18    # "c":I
    .end local v20    # "componentDelimiterOffset":I
    .end local v21    # "hasPassword":Z
    .end local v22    # "hasUsername":Z
    .end local v25    # "portColonOffset":I
    .end local v27    # "slashCount":I
    :goto_3
    return-object v3

    .line 1298
    :cond_1
    const/4 v4, 0x1

    const-string v6, "http:"

    const/4 v7, 0x0

    const/4 v8, 0x5

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1299
    const-string v3, "http"

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1300
    const-string v3, "http:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_0

    .line 1302
    :cond_2
    sget-object v3, Lextern/okhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lextern/okhttp3/HttpUrl$Builder$ParseResult;

    goto :goto_3

    .line 1304
    :cond_3
    if-eqz p1, :cond_4

    .line 1305
    # getter for: Lextern/okhttp3/HttpUrl;->scheme:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lextern/okhttp3/HttpUrl;->access$100(Lextern/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto/16 :goto_0

    .line 1307
    :cond_4
    sget-object v3, Lextern/okhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lextern/okhttp3/HttpUrl$Builder$ParseResult;

    goto :goto_3

    .line 1328
    .restart local v20    # "componentDelimiterOffset":I
    .restart local v21    # "hasPassword":Z
    .restart local v22    # "hasUsername":Z
    .restart local v27    # "slashCount":I
    :cond_5
    const/16 v18, -0x1

    goto :goto_2

    .line 1334
    .restart local v18    # "c":I
    :sswitch_1
    if-nez v21, :cond_8

    .line 1335
    const/16 v3, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-static {v0, v5, v1, v3}, Lextern/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v6

    .line 1337
    .local v6, "passwordColonOffset":I
    const-string v7, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v11}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v19

    .line 1339
    .local v19, "canonicalUsername":Ljava/lang/String;
    if-eqz v22, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .end local v19    # "canonicalUsername":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lextern/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1342
    move/from16 v0, v20

    if-eq v6, v0, :cond_7

    .line 1343
    const/16 v21, 0x1

    .line 1344
    add-int/lit8 v8, v6, 0x1

    const-string v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p2

    move/from16 v9, v20

    invoke-static/range {v7 .. v14}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1347
    :cond_7
    const/16 v22, 0x1

    .line 1352
    .end local v6    # "passwordColonOffset":I
    :goto_4
    add-int/lit8 v5, v20, 0x1

    .line 1353
    goto/16 :goto_1

    .line 1349
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%40"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, p2

    move v8, v5

    move/from16 v9, v20

    invoke-static/range {v7 .. v14}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_4

    .line 1367
    .restart local v25    # "portColonOffset":I
    :cond_9
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-static {v0, v5, v1}, Lextern/okhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1368
    move-object/from16 v0, p0

    iget-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v3}, Lextern/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lextern/okhttp3/HttpUrl$Builder;->port:I

    .line 1370
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-nez v3, :cond_b

    sget-object v3, Lextern/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lextern/okhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_3

    .line 1371
    :cond_b
    move/from16 v5, v20

    .line 1389
    .end local v18    # "c":I
    .end local v20    # "componentDelimiterOffset":I
    .end local v25    # "portColonOffset":I
    :cond_c
    :goto_5
    const-string v3, "?#"

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1, v3}, Lextern/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v24

    .line 1390
    .local v24, "pathDelimiterOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-direct {v0, v1, v5, v2}, Lextern/okhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1391
    move/from16 v5, v24

    .line 1394
    move/from16 v0, v23

    if-ge v5, v0, :cond_d

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_d

    .line 1395
    const/16 v3, 0x23

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v5, v1, v3}, Lextern/okhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v9

    .line 1396
    .local v9, "queryDelimiterOffset":I
    add-int/lit8 v8, v5, 0x1

    const-string v10, " \"\'<>#"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v7, p2

    invoke-static/range {v7 .. v14}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lextern/okhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1398
    move v5, v9

    .line 1402
    .end local v9    # "queryDelimiterOffset":I
    :cond_d
    move/from16 v0, v23

    if-ge v5, v0, :cond_e

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_e

    .line 1403
    add-int/lit8 v11, v5, 0x1

    const-string v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p2

    move/from16 v12, v23

    invoke-static/range {v10 .. v17}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1407
    :cond_e
    sget-object v3, Lextern/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lextern/okhttp3/HttpUrl$Builder$ParseResult;

    goto/16 :goto_3

    .line 1377
    .end local v24    # "pathDelimiterOffset":I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lextern/okhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1378
    invoke-virtual/range {p1 .. p1}, Lextern/okhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1379
    # getter for: Lextern/okhttp3/HttpUrl;->host:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lextern/okhttp3/HttpUrl;->access$200(Lextern/okhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1380
    # getter for: Lextern/okhttp3/HttpUrl;->port:I
    invoke-static/range {p1 .. p1}, Lextern/okhttp3/HttpUrl;->access$300(Lextern/okhttp3/HttpUrl;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lextern/okhttp3/HttpUrl$Builder;->port:I

    .line 1381
    move-object/from16 v0, p0

    iget-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lextern/okhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1383
    move/from16 v0, v23

    if-eq v5, v0, :cond_10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_c

    .line 1384
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lextern/okhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lextern/okhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;

    goto/16 :goto_5

    .line 1331
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 987
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 989
    return-object p0
.end method

.method public port(I)Lextern/okhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "port"    # I

    .prologue
    .line 1012
    if-lez p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_1
    iput p1, p0, Lextern/okhttp3/HttpUrl$Builder;->port:I

    .line 1014
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1109
    if-eqz p1, :cond_0

    const-string v1, " \"\'<>#"

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lextern/okhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1113
    return-object p0

    .line 1109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reencodeForUri()Lextern/okhttp3/HttpUrl$Builder;
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1209
    const/4 v12, 0x0

    .local v12, "i":I
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "size":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 1210
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1211
    .local v0, "pathSegment":Ljava/lang/String;
    iget-object v6, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, "[]"

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v12, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1209
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1214
    .end local v0    # "pathSegment":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1215
    const/4 v12, 0x0

    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    :goto_1
    if-ge v12, v13, :cond_2

    .line 1216
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1217
    .local v5, "component":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1218
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-static/range {v5 .. v10}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1215
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1223
    .end local v5    # "component":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1224
    iget-object v6, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const-string v7, " \"#<>\\^`{|}"

    move v8, v2

    move v9, v2

    move v10, v4

    move v11, v4

    invoke-static/range {v6 .. v11}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1227
    :cond_3
    return-object p0
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "encodedName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1170
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1171
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1174
    :goto_0
    return-object p0

    .line 1172
    :cond_1
    const-string v1, " \"\'<>#&="

    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lextern/okhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1161
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_0
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1166
    :goto_0
    return-object p0

    .line 1163
    :cond_1
    const-string v1, " \"\'<>#&="

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v6

    .line 1165
    .local v6, "nameToRemove":Ljava/lang/String;
    invoke-direct {p0, v6}, Lextern/okhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePathSegment(I)Lextern/okhttp3/HttpUrl$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1092
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1093
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_0
    return-object p0
.end method

.method public scheme(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 961
    if-nez p1, :cond_0

    .line 962
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_0
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 964
    const-string v0, "http"

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 970
    :goto_0
    return-object p0

    .line 965
    :cond_1
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    const-string v0, "https"

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 968
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 9
    .param p1, "index"    # I
    .param p2, "encodedPathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1079
    if-nez p2, :cond_0

    .line 1080
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1082
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    move v5, v1

    move v6, v1

    move v7, v4

    invoke-static/range {v0 .. v7}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 1084
    .local v8, "canonicalPathSegment":Ljava/lang/String;
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1085
    invoke-direct {p0, v8}, Lextern/okhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v8}, Lextern/okhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1086
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_2
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 0
    .param p1, "encodedName"    # Ljava/lang/String;
    .param p2, "encodedValue"    # Ljava/lang/String;

    .prologue
    .line 1155
    invoke-virtual {p0, p1}, Lextern/okhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;

    .line 1156
    invoke-virtual {p0, p1, p2}, Lextern/okhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;

    .line 1157
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 9
    .param p1, "index"    # I
    .param p2, "pathSegment"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1068
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v7, 0x1

    move-object v0, p2

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v7}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v8

    .line 1071
    .local v8, "canonicalPathSegment":Ljava/lang/String;
    invoke-direct {p0, v8}, Lextern/okhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v8}, Lextern/okhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1072
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_2
    iget-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1075
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1149
    invoke-virtual {p0, p1}, Lextern/okhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;

    .line 1150
    invoke-virtual {p0, p1, p2}, Lextern/okhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;

    .line 1151
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1242
    :cond_0
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1244
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1245
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    :cond_1
    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1250
    :cond_2
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1252
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1253
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1259
    :goto_0
    invoke-virtual {p0}, Lextern/okhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v0

    .line 1260
    .local v0, "effectivePort":I
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lextern/okhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 1261
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1265
    :cond_3
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v1, v2}, Lextern/okhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1267
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 1268
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1269
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v1, v2}, Lextern/okhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1272
    :cond_4
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1273
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1274
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1256
    .end local v0    # "effectivePort":I
    :cond_6
    iget-object v2, p0, Lextern/okhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public username(Ljava/lang/String;)Lextern/okhttp3/HttpUrl$Builder;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 974
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_0
    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lextern/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lextern/okhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 976
    return-object p0
.end method
