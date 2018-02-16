.class Lcom/igaworks/gson/Gson$2;
.super Lcom/igaworks/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/gson/Gson;->floatAdapter(Z)Lcom/igaworks/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/gson/Gson;


# direct methods
.method constructor <init>(Lcom/igaworks/gson/Gson;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/gson/Gson;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/igaworks/gson/Gson$2;->this$0:Lcom/igaworks/gson/Gson;

    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Float;
    .locals 2
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/Gson$2;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 4
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    if-nez p2, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->nullValue()Lcom/igaworks/gson/stream/JsonWriter;

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 316
    .local v0, "floatValue":F
    float-to-double v2, v0

    invoke-static {v2, v3}, Lcom/igaworks/gson/Gson;->checkValidFloatingPoint(D)V

    .line 317
    invoke-virtual {p1, p2}, Lcom/igaworks/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/igaworks/gson/stream/JsonWriter;

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/Gson$2;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
