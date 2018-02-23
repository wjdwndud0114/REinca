.class public Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "MLSxEntryParser.java"


# static fields
.field private static final PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

.field private static final TYPE_TO_INT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static UNIX_GROUPS:[I

.field private static UNIX_PERMS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 58
    new-instance v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    .line 62
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "file"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "cdir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "pdir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "dir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    aput-object v1, v0, v4

    new-array v1, v3, [I

    aput v5, v1, v4

    aput-object v1, v0, v3

    new-array v1, v3, [I

    aput v3, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v2, v3, [I

    aput v4, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    return-void

    .line 68
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 74
    :array_1
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    .line 92
    return-void
.end method

.method private doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Lorg/apache/commons/net/ftp/FTPFile;
    .param p2, "valueLowerCase"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 179
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 181
    .local v1, "c":C
    packed-switch v1, :pswitch_data_0

    .line 179
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 186
    :pswitch_2
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 189
    :pswitch_3
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 192
    :pswitch_4
    invoke-virtual {p1, v6, v6, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 198
    :pswitch_5
    const/4 v4, 0x2

    invoke-virtual {p1, v6, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 201
    :pswitch_6
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 204
    :pswitch_7
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 207
    :pswitch_8
    invoke-virtual {p1, v6, v6, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 210
    :pswitch_9
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 217
    .end local v1    # "c":C
    :cond_0
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    return-object v0
.end method

.method public static parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .param p0, "entry"    # Ljava/lang/String;

    .prologue
    .line 220
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 30
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v28, " "

    const/16 v29, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v24

    .line 97
    .local v24, "parts":[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 98
    const/4 v13, 0x0

    .line 172
    :cond_0
    return-object v13

    .line 100
    :cond_1
    new-instance v13, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v13}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 101
    .local v13, "file":Lorg/apache/commons/net/ftp/FTPFile;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 102
    const/16 v28, 0x1

    aget-object v28, v24, v28

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 103
    const/16 v28, 0x0

    aget-object v28, v24, v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "facts":[Ljava/lang/String;
    const/16 v28, 0x0

    aget-object v28, v24, v28

    sget-object v29, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "unix.mode="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 105
    .local v15, "hasUnixMode":Z
    move-object v5, v11

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    move/from16 v18, v17

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    .local v18, "i$":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v8, v5, v18

    .line 106
    .local v8, "fact":Ljava/lang/String;
    const-string v28, "="

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "factparts":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    .line 105
    .end local v18    # "i$":I
    :cond_2
    :goto_1
    add-int/lit8 v17, v18, 0x1

    .restart local v17    # "i$":I
    move/from16 v18, v17

    .end local v17    # "i$":I
    .restart local v18    # "i$":I
    goto :goto_0

    .line 113
    :cond_3
    const/16 v28, 0x0

    aget-object v28, v10, v28

    sget-object v29, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "factname":Ljava/lang/String;
    const/16 v28, 0x1

    aget-object v12, v10, v28

    .line 115
    .local v12, "factvalue":Ljava/lang/String;
    sget-object v28, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v27

    .line 116
    .local v27, "valueLowerCase":Ljava/lang/String;
    const-string v28, "size"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 117
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    .line 119
    :cond_4
    const-string v28, "sizd"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 120
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v13, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    .line 122
    :cond_5
    const-string v28, "modify"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 125
    const-string v28, "."

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 126
    new-instance v25, Ljava/text/SimpleDateFormat;

    const-string v28, "yyyyMMddHHmmss.SSS"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 130
    .local v25, "sdf":Ljava/text/SimpleDateFormat;
    :goto_2
    const-string v28, "GMT"

    invoke-static/range {v28 .. v28}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 131
    .local v4, "GMT":Ljava/util/TimeZone;
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    new-instance v14, Ljava/util/GregorianCalendar;

    invoke-direct {v14, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 134
    .local v14, "gc":Ljava/util/GregorianCalendar;
    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_3
    invoke-virtual {v13, v14}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    goto :goto_1

    .line 128
    .end local v4    # "GMT":Ljava/util/TimeZone;
    .end local v14    # "gc":Ljava/util/GregorianCalendar;
    .end local v25    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_6
    new-instance v25, Ljava/text/SimpleDateFormat;

    const-string v28, "yyyyMMddHHmmss"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v25    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_2

    .line 140
    .end local v25    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    const-string v28, "type"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 141
    sget-object v28, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    .line 142
    .local v19, "intType":Ljava/lang/Integer;
    if-nez v19, :cond_8

    .line 143
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto/16 :goto_1

    .line 145
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto/16 :goto_1

    .line 148
    .end local v19    # "intType":Ljava/lang/Integer;
    :cond_9
    const-string v28, "unix."

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_d

    .line 149
    const-string v28, "unix."

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    sget-object v29, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    .line 150
    .local v26, "unixfact":Ljava/lang/String;
    const-string v28, "group"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 151
    invoke-virtual {v13, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 152
    :cond_a
    const-string v28, "owner"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 153
    invoke-virtual {v13, v12}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 154
    :cond_b
    const-string v28, "mode"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 155
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v22, v28, -0x3

    .line 156
    .local v22, "off":I
    const/16 v16, 0x0

    .end local v18    # "i$":I
    .local v16, "i":I
    :goto_4
    const/16 v28, 0x3

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    .line 157
    add-int v28, v22, v16

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    add-int/lit8 v7, v28, -0x30

    .line 158
    .local v7, "ch":I
    if-ltz v7, :cond_c

    const/16 v28, 0x7

    move/from16 v0, v28

    if-gt v7, v0, :cond_c

    .line 159
    sget-object v28, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    aget-object v6, v28, v7

    .local v6, "arr$":[I
    array-length v0, v6

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v17, 0x0

    .restart local v17    # "i$":I
    :goto_5
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    aget v23, v6, v17

    .line 160
    .local v23, "p":I
    sget-object v28, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    aget v28, v28, v16

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v23

    move/from16 v2, v29

    invoke-virtual {v13, v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    .line 159
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 156
    .end local v6    # "arr$":[I
    .end local v17    # "i$":I
    .end local v21    # "len$":I
    .end local v23    # "p":I
    :cond_c
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 168
    .end local v7    # "ch":I
    .end local v16    # "i":I
    .end local v22    # "off":I
    .end local v26    # "unixfact":Ljava/lang/String;
    .restart local v18    # "i$":I
    :cond_d
    if-nez v15, :cond_2

    const-string v28, "perm"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v13, v1}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 135
    .restart local v4    # "GMT":Ljava/util/TimeZone;
    .restart local v14    # "gc":Ljava/util/GregorianCalendar;
    .restart local v25    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v28

    goto/16 :goto_3
.end method
