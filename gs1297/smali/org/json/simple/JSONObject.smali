.class public Lorg/json/simple/JSONObject;
.super Ljava/util/HashMap;
.source "JSONObject.java"

# interfaces
.implements Ljava/util/Map;
.implements Lorg/json/simple/JSONAware;
.implements Lorg/json/simple/JSONStreamAware;


# static fields
.field private static final serialVersionUID:J = -0x6fc977743e77bbcL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 35
    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p0}, Lorg/json/simple/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toJSONString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v1, 0x22

    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    if-nez p0, :cond_0

    .line 114
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    invoke-static {p1}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    invoke-static {p0, p2}, Lorg/json/simple/JSONValue;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method public static toJSONString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    const-string v4, "null"

    .line 104
    :goto_0
    return-object v4

    .line 89
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 91
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    .local v2, "iter":Ljava/util/Iterator;
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x0

    .line 100
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lorg/json/simple/JSONObject;->toJSONString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;

    goto :goto_1

    .line 98
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 103
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static toString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-static {p0, p1, v0}, Lorg/json/simple/JSONObject;->toJSONString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;)Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeJSONString(Ljava/util/Map;Ljava/io/Writer;)V
    .locals 5
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x22

    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v1, 0x1

    .line 54
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 56
    .local v2, "iter":Ljava/util/Iterator;
    const/16 v3, 0x7b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 57
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    if-eqz v1, :cond_1

    .line 59
    const/4 v1, 0x0

    .line 62
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 64
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json/simple/JSONObject;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 66
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 67
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/json/simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_1

    .line 61
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 69
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-static {p0}, Lorg/json/simple/JSONObject;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/json/simple/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/io/Writer;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0, p1}, Lorg/json/simple/JSONObject;->writeJSONString(Ljava/util/Map;Ljava/io/Writer;)V

    .line 74
    return-void
.end method
