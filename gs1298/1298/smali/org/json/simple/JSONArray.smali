.class public Lorg/json/simple/JSONArray;
.super Ljava/util/ArrayList;
.source "JSONArray.java"

# interfaces
.implements Ljava/util/List;
.implements Lorg/json/simple/JSONAware;
.implements Lorg/json/simple/JSONStreamAware;


# static fields
.field private static final serialVersionUID:J = 0x36ed996451b68eedL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static toJSONString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0, "list"    # Ljava/util/List;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const-string v4, "null"

    .line 94
    :goto_0
    return-object v4

    .line 75
    :cond_0
    const/4 v0, 0x1

    .line 76
    .local v0, "first":Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    .local v1, "iter":Ljava/util/Iterator;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 86
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 88
    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 84
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 91
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {v3}, Lorg/json/simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 93
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static writeJSONString(Ljava/util/List;Ljava/io/Writer;)V
    .locals 4
    .param p0, "list"    # Ljava/util/List;
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 38
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    .local v1, "iter":Ljava/util/Iterator;
    const/16 v3, 0x5b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 41
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    if-eqz v0, :cond_1

    .line 43
    const/4 v0, 0x0

    .line 47
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 49
    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_2

    .line 53
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    invoke-static {v2, p1}, Lorg/json/simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_1

    .line 55
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    goto :goto_0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-static {p0}, Lorg/json/simple/JSONArray;->toJSONString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/json/simple/JSONArray;->toJSONString()Ljava/lang/String;

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
    .line 59
    invoke-static {p0, p1}, Lorg/json/simple/JSONArray;->writeJSONString(Ljava/util/List;Ljava/io/Writer;)V

    .line 60
    return-void
.end method
