.class public Lorg/json/simple/parser/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field public static final S_END:I = 0x6

.field public static final S_INIT:I = 0x0

.field public static final S_IN_ARRAY:I = 0x3

.field public static final S_IN_ERROR:I = -0x1

.field public static final S_IN_FINISHED_VALUE:I = 0x1

.field public static final S_IN_OBJECT:I = 0x2

.field public static final S_IN_PAIR_VALUE:I = 0x5

.field public static final S_PASSED_PAIR_KEY:I = 0x4


# instance fields
.field private handlerStatusStack:Ljava/util/LinkedList;

.field private lexer:Lorg/json/simple/parser/Yylex;

.field private status:I

.field private token:Lorg/json/simple/parser/Yytoken;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v2, Lorg/json/simple/parser/Yylex;

    move-object v0, v1

    check-cast v0, Ljava/io/Reader;

    invoke-direct {v2, v0}, Lorg/json/simple/parser/Yylex;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lorg/json/simple/parser/JSONParser;->lexer:Lorg/json/simple/parser/Yylex;

    .line 35
    iput-object v1, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    return-void
.end method

.method private createArrayContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/List;
    .locals 1
    .param p1, "containerFactory"    # Lorg/json/simple/parser/ContainerFactory;

    .prologue
    .line 285
    if-nez p1, :cond_1

    .line 286
    new-instance v0, Lorg/json/simple/JSONArray;

    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    .line 291
    :cond_0
    :goto_0
    return-object v0

    .line 287
    :cond_1
    invoke-interface {p1}, Lorg/json/simple/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "l":Ljava/util/List;
    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lorg/json/simple/JSONArray;

    .end local v0    # "l":Ljava/util/List;
    invoke-direct {v0}, Lorg/json/simple/JSONArray;-><init>()V

    goto :goto_0
.end method

.method private createObjectContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/Map;
    .locals 1
    .param p1, "containerFactory"    # Lorg/json/simple/parser/ContainerFactory;

    .prologue
    .line 275
    if-nez p1, :cond_1

    .line 276
    new-instance v0, Lorg/json/simple/JSONObject;

    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    .line 281
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    invoke-interface {p1}, Lorg/json/simple/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object v0

    .line 279
    .local v0, "m":Ljava/util/Map;
    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lorg/json/simple/JSONObject;

    .end local v0    # "m":Ljava/util/Map;
    invoke-direct {v0}, Lorg/json/simple/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private nextToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/simple/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->lexer:Lorg/json/simple/parser/Yylex;

    invoke-virtual {v0}, Lorg/json/simple/parser/Yylex;->yylex()Lorg/json/simple/parser/Yytoken;

    move-result-object v0

    iput-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    .line 270
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lorg/json/simple/parser/Yytoken;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/json/simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    .line 272
    :cond_0
    return-void
.end method

.method private peekStatus(Ljava/util/LinkedList;)I
    .locals 2
    .param p1, "statusStack"    # Ljava/util/LinkedList;

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 40
    const/4 v1, -0x1

    .line 42
    :goto_0
    return v1

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 42
    .local v0, "status":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->lexer:Lorg/json/simple/parser/Yylex;

    invoke-virtual {v0}, Lorg/json/simple/parser/Yylex;->getPosition()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    check-cast v0, Lorg/json/simple/parser/ContainerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/Reader;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 12
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "containerFactory"    # Lorg/json/simple/parser/ContainerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x1

    .line 112
    invoke-virtual {p0, p1}, Lorg/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 113
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 114
    .local v5, "statusStack":Ljava/util/LinkedList;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 118
    .local v7, "valueStack":Ljava/util/LinkedList;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    .line 119
    iget v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    packed-switch v8, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    iget v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    if-ne v8, v10, :cond_5

    .line 257
    new-instance v8, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v9

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v8, v9, v10, v11}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ie":Ljava/io/IOException;
    throw v0

    .line 121
    .end local v0    # "ie":Ljava/io/IOException;
    :pswitch_1
    :try_start_1
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v8, v8, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v8, :pswitch_data_1

    .line 138
    :pswitch_2
    const/4 v8, -0x1

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto :goto_0

    .line 123
    :pswitch_3
    const/4 v8, 0x1

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 124
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 125
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v8, v8, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :pswitch_4
    const/4 v8, 0x2

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 129
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 130
    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createObjectContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :pswitch_5
    const/4 v8, 0x3

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 134
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createArrayContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :pswitch_6
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v8, v8, Lorg/json/simple/parser/Yytoken;->type:I

    if-ne v8, v10, :cond_1

    .line 144
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    return-object v8

    .line 146
    :cond_1
    new-instance v8, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v9

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v8, v9, v10, v11}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v8

    .line 149
    :pswitch_7
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v8, v8, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v8, :pswitch_data_2

    .line 174
    :pswitch_8
    const/4 v8, -0x1

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto :goto_0

    .line 153
    :pswitch_9
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v8, v8, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 154
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v1, v8, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 155
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 156
    const/4 v8, 0x4

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 157
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 160
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const/4 v8, -0x1

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 164
    :pswitch_a
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v11, :cond_3

    .line 165
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 166
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 167
    invoke-direct {p0, v5}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v8

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 170
    :cond_3
    const/4 v8, 0x1

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 180
    :pswitch_b
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v8, v8, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v8, :pswitch_data_3

    .line 211
    :pswitch_c
    const/4 v8, -0x1

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 184
    :pswitch_d
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 185
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 187
    .local v4, "parent":Ljava/util/Map;
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v8, v8, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v4, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-direct {p0, v5}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v8

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 191
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "parent":Ljava/util/Map;
    :pswitch_e
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 192
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 194
    .restart local v4    # "parent":Ljava/util/Map;
    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createArrayContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "newArray":Ljava/util/List;
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/4 v8, 0x3

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 197
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 201
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newArray":Ljava/util/List;
    .end local v4    # "parent":Ljava/util/Map;
    :pswitch_f
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 202
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 204
    .restart local v4    # "parent":Ljava/util/Map;
    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createObjectContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v3

    .line 205
    .local v3, "newObject":Ljava/util/Map;
    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/4 v8, 0x2

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 207
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 216
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "newObject":Ljava/util/Map;
    .end local v4    # "parent":Ljava/util/Map;
    :pswitch_10
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v8, v8, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v8, :pswitch_data_4

    .line 250
    :pswitch_11
    const/4 v8, -0x1

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 220
    :pswitch_12
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 221
    .local v6, "val":Ljava/util/List;
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v8, v8, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 224
    .end local v6    # "val":Ljava/util/List;
    :pswitch_13
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 225
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 226
    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 227
    invoke-direct {p0, v5}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v8

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 230
    :cond_4
    const/4 v8, 0x1

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_0

    .line 234
    :pswitch_14
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 235
    .restart local v6    # "val":Ljava/util/List;
    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createObjectContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v3

    .line 236
    .restart local v3    # "newObject":Ljava/util/Map;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    const/4 v8, 0x2

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 238
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 242
    .end local v3    # "newObject":Ljava/util/Map;
    .end local v6    # "val":Ljava/util/List;
    :pswitch_15
    invoke-virtual {v7}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 243
    .restart local v6    # "val":Ljava/util/List;
    invoke-direct {p0, p2}, Lorg/json/simple/parser/JSONParser;->createArrayContainer(Lorg/json/simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v2

    .line 244
    .restart local v2    # "newArray":Ljava/util/List;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const/4 v8, 0x3

    iput v8, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 246
    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 254
    .end local v2    # "newArray":Ljava/util/List;
    .end local v6    # "val":Ljava/util/List;
    :pswitch_16
    new-instance v8, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v9

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v8, v9, v10, v11}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v8

    .line 259
    :cond_5
    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v8, v8, Lorg/json/simple/parser/Yytoken;->type:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v8, v10, :cond_0

    .line 265
    new-instance v8, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v9

    iget-object v10, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v8, v9, v11, v10}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v8

    .line 119
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_10
        :pswitch_b
    .end packed-switch

    .line 121
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 149
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_f
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_0
    .end packed-switch

    .line 216
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_15
        :pswitch_13
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    check-cast v0, Lorg/json/simple/parser/ContainerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "containerFactory"    # Lorg/json/simple/parser/ContainerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "in":Ljava/io/StringReader;
    :try_start_0
    invoke-virtual {p0, v1, p2}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/json/simple/parser/ContainerFactory;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 87
    .local v0, "ie":Ljava/io/IOException;
    new-instance v2, Lorg/json/simple/parser/ParseException;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v0}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v2
.end method

.method public parse(Ljava/io/Reader;Lorg/json/simple/parser/ContentHandler;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "contentHandler"    # Lorg/json/simple/parser/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/json/simple/parser/ContentHandler;Z)V

    .line 313
    return-void
.end method

.method public parse(Ljava/io/Reader;Lorg/json/simple/parser/ContentHandler;Z)V
    .locals 11
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "contentHandler"    # Lorg/json/simple/parser/ContentHandler;
    .param p3, "isResume"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, -0x1

    .line 330
    if-nez p3, :cond_3

    .line 331
    invoke-virtual {p0, p1}, Lorg/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 332
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 342
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 346
    .local v5, "statusStack":Ljava/util/LinkedList;
    :cond_1
    :try_start_0
    iget v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    packed-switch v6, :pswitch_data_0

    .line 508
    :cond_2
    :goto_1
    :pswitch_0
    iget v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    if-ne v6, v10, :cond_9

    .line 509
    new-instance v6, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v6, v7, v8, v9}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, "ie":Ljava/io/IOException;
    iput v10, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 515
    throw v1

    .line 335
    .end local v1    # "ie":Ljava/io/IOException;
    .end local v5    # "statusStack":Ljava/util/LinkedList;
    :cond_3
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    if-nez v6, :cond_0

    .line 336
    const/4 p3, 0x0

    .line 337
    invoke-virtual {p0, p1}, Lorg/json/simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 338
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    goto :goto_0

    .line 348
    .restart local v5    # "statusStack":Ljava/util/LinkedList;
    :pswitch_1
    :try_start_1
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startJSON()V

    .line 349
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    .line 350
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v6, v6, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v6, :pswitch_data_1

    .line 370
    :pswitch_2
    const/4 v6, -0x1

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 517
    :catch_1
    move-exception v3

    .line 518
    .local v3, "pe":Lorg/json/simple/parser/ParseException;
    iput v10, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 519
    throw v3

    .line 352
    .end local v3    # "pe":Lorg/json/simple/parser/ParseException;
    :pswitch_3
    const/4 v6, 0x1

    :try_start_2
    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 353
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 354
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v6, v6, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v6}, Lorg/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 503
    :cond_4
    :goto_2
    :pswitch_4
    return-void

    .line 358
    :pswitch_5
    const/4 v6, 0x2

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 359
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 360
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 364
    :pswitch_6
    const/4 v6, 0x3

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 365
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 366
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 375
    :pswitch_7
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    .line 376
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v6, v6, Lorg/json/simple/parser/Yytoken;->type:I

    if-ne v6, v10, :cond_5

    .line 377
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endJSON()V

    .line 378
    const/4 v6, 0x6

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 521
    :catch_2
    move-exception v4

    .line 522
    .local v4, "re":Ljava/lang/RuntimeException;
    iput v10, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 523
    throw v4

    .line 382
    .end local v4    # "re":Ljava/lang/RuntimeException;
    :cond_5
    const/4 v6, -0x1

    :try_start_3
    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 383
    new-instance v6, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v6, v7, v8, v9}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    .line 525
    :catch_3
    move-exception v0

    .line 526
    .local v0, "e":Ljava/lang/Error;
    iput v10, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 527
    throw v0

    .line 387
    .end local v0    # "e":Ljava/lang/Error;
    :pswitch_8
    :try_start_4
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    .line 388
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v6, v6, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v6, :pswitch_data_2

    .line 415
    :pswitch_9
    const/4 v6, -0x1

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 392
    :pswitch_a
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v6, v6, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 393
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v2, v6, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 394
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x4

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 395
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 396
    invoke-interface {p2, v2}, Lorg/json/simple/parser/ContentHandler;->startObjectEntry(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 400
    .end local v2    # "key":Ljava/lang/String;
    :cond_6
    const/4 v6, -0x1

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 404
    :pswitch_b
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, v9, :cond_7

    .line 405
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 406
    invoke-direct {p0, v5}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v6

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 411
    :goto_3
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endObject()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 409
    :cond_7
    const/4 v6, 0x1

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto :goto_3

    .line 421
    :pswitch_c
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    .line 422
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v6, v6, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v6, :pswitch_data_3

    .line 450
    :pswitch_d
    const/4 v6, -0x1

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 426
    :pswitch_e
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 427
    invoke-direct {p0, v5}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v6

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 428
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v6, v6, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v6}, Lorg/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 430
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 434
    :pswitch_f
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 435
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 436
    const/4 v6, 0x3

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 437
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 438
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 442
    :pswitch_10
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 443
    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 444
    const/4 v6, 0x2

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 445
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 446
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 459
    :pswitch_11
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 460
    invoke-direct {p0, v5}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v6

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 461
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 466
    :pswitch_12
    invoke-direct {p0}, Lorg/json/simple/parser/JSONParser;->nextToken()V

    .line 467
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v6, v6, Lorg/json/simple/parser/Yytoken;->type:I

    packed-switch v6, :pswitch_data_4

    .line 498
    :pswitch_13
    const/4 v6, -0x1

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 471
    :pswitch_14
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget-object v6, v6, Lorg/json/simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v6}, Lorg/json/simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 475
    :pswitch_15
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, v9, :cond_8

    .line 476
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 477
    invoke-direct {p0, v5}, Lorg/json/simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v6

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 482
    :goto_4
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->endArray()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 480
    :cond_8
    const/4 v6, 0x1

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    goto :goto_4

    .line 486
    :pswitch_16
    const/4 v6, 0x2

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 487
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 488
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startObject()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 492
    :pswitch_17
    const/4 v6, 0x3

    iput v6, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 493
    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lorg/json/simple/parser/JSONParser;->status:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 494
    invoke-interface {p2}, Lorg/json/simple/parser/ContentHandler;->startArray()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 506
    :pswitch_18
    new-instance v6, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v6, v7, v8, v9}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6

    .line 511
    :cond_9
    iget-object v6, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    iget v6, v6, Lorg/json/simple/parser/Yytoken;->type:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/simple/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    if-ne v6, v10, :cond_1

    .line 530
    iput v10, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 531
    new-instance v6, Lorg/json/simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->getPosition()I

    move-result v7

    iget-object v8, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    invoke-direct {v6, v7, v9, v8}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v6

    .line 346
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_18
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_12
        :pswitch_c
        :pswitch_11
        :pswitch_4
    .end packed-switch

    .line 350
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 388
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_0
    .end packed-switch

    .line 422
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_0
    .end packed-switch

    .line 467
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_17
        :pswitch_15
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Lorg/json/simple/parser/ContentHandler;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "contentHandler"    # Lorg/json/simple/parser/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/json/simple/parser/ContentHandler;Z)V

    .line 296
    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/json/simple/parser/ContentHandler;Z)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "contentHandler"    # Lorg/json/simple/parser/ContentHandler;
    .param p3, "isResume"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/simple/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 301
    .local v1, "in":Ljava/io/StringReader;
    :try_start_0
    invoke-virtual {p0, v1, p2, p3}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/json/simple/parser/ContentHandler;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 307
    .local v0, "ie":Ljava/io/IOException;
    new-instance v2, Lorg/json/simple/parser/ParseException;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v0}, Lorg/json/simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v2
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lorg/json/simple/parser/JSONParser;->token:Lorg/json/simple/parser/Yytoken;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/json/simple/parser/JSONParser;->status:I

    .line 52
    iput-object v1, p0, Lorg/json/simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 53
    return-void
.end method

.method public reset(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/json/simple/parser/JSONParser;->lexer:Lorg/json/simple/parser/Yylex;

    invoke-virtual {v0, p1}, Lorg/json/simple/parser/Yylex;->yyreset(Ljava/io/Reader;)V

    .line 64
    invoke-virtual {p0}, Lorg/json/simple/parser/JSONParser;->reset()V

    .line 65
    return-void
.end method
