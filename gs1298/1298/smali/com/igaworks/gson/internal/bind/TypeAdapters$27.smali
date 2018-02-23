.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$27;
.super Lcom/igaworks/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/internal/bind/TypeAdapters$27;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/Calendar;
    .locals 10
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v0

    sget-object v9, Lcom/igaworks/gson/stream/JsonToken;->NULL:Lcom/igaworks/gson/stream/JsonToken;

    if-ne v0, v9, :cond_0

    .line 603
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextNull()V

    .line 604
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    .line 606
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->beginObject()V

    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "year":I
    const/4 v2, 0x0

    .line 609
    .local v2, "month":I
    const/4 v3, 0x0

    .line 610
    .local v3, "dayOfMonth":I
    const/4 v4, 0x0

    .line 611
    .local v4, "hourOfDay":I
    const/4 v5, 0x0

    .line 612
    .local v5, "minute":I
    const/4 v6, 0x0

    .line 613
    .local v6, "second":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v0

    sget-object v9, Lcom/igaworks/gson/stream/JsonToken;->END_OBJECT:Lcom/igaworks/gson/stream/JsonToken;

    if-eq v0, v9, :cond_7

    .line 614
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 615
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextInt()I

    move-result v8

    .line 616
    .local v8, "value":I
    const-string v0, "year"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    move v1, v8

    goto :goto_1

    .line 618
    :cond_2
    const-string v0, "month"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    move v2, v8

    goto :goto_1

    .line 620
    :cond_3
    const-string v0, "dayOfMonth"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 621
    move v3, v8

    goto :goto_1

    .line 622
    :cond_4
    const-string v0, "hourOfDay"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    move v4, v8

    goto :goto_1

    .line 624
    :cond_5
    const-string v0, "minute"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    move v5, v8

    goto :goto_1

    .line 626
    :cond_6
    const-string v0, "second"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    move v6, v8

    goto :goto_1

    .line 630
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":I
    :cond_7
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->endObject()V

    .line 631
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

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
    .line 592
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/internal/bind/TypeAdapters$27;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    if-nez p2, :cond_0

    .line 637
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->nullValue()Lcom/igaworks/gson/stream/JsonWriter;

    .line 654
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->beginObject()Lcom/igaworks/gson/stream/JsonWriter;

    .line 641
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->value(J)Lcom/igaworks/gson/stream/JsonWriter;

    .line 643
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 644
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->value(J)Lcom/igaworks/gson/stream/JsonWriter;

    .line 645
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 646
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->value(J)Lcom/igaworks/gson/stream/JsonWriter;

    .line 647
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 648
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->value(J)Lcom/igaworks/gson/stream/JsonWriter;

    .line 649
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 650
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->value(J)Lcom/igaworks/gson/stream/JsonWriter;

    .line 651
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 652
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/igaworks/gson/stream/JsonWriter;->value(J)Lcom/igaworks/gson/stream/JsonWriter;

    .line 653
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonWriter;->endObject()Lcom/igaworks/gson/stream/JsonWriter;

    goto :goto_0
.end method
