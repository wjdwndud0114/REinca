.class final Lcom/igaworks/gson/DefaultDateTypeAdapter;
.super Lcom/igaworks/gson/TypeAdapter;
.source "DefaultDateTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/igaworks/gson/TypeAdapter",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIMPLE_NAME:Ljava/lang/String; = "DefaultDateTypeAdapter"


# instance fields
.field private final dateType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private final enUsFormat:Ljava/text/DateFormat;

.field private final localFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .prologue
    .line 63
    const-class v0, Ljava/util/Date;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 64
    invoke-static {p1, p2, v1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 65
    invoke-static {p1, p2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 63
    invoke-direct {p0, v0, v1, v2}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dateType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    const/4 v1, 0x2

    .line 49
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 50
    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 51
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 49
    invoke-direct {p0, p1, v0, v1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "style"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "dateType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {p2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 2
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "dateType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 70
    invoke-static {p2, p3, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 71
    invoke-static {p2, p3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    .line 69
    invoke-direct {p0, p1, v0, v1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 72
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "datePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "dateType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/Class;Ljava/text/DateFormat;Ljava/text/DateFormat;)V

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 3
    .param p2, "enUsFormat"    # Ljava/text/DateFormat;
    .param p3, "localFormat"    # Ljava/text/DateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Date;",
            ">;",
            "Ljava/text/DateFormat;",
            "Ljava/text/DateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "dateType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Date;>;"
    invoke-direct {p0}, Lcom/igaworks/gson/TypeAdapter;-><init>()V

    .line 75
    const-class v0, Ljava/util/Date;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/sql/Date;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/sql/Timestamp;

    if-eq p1, v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date type must be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/sql/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    .line 79
    iput-object p2, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    .line 80
    iput-object p3, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    .line 81
    return-void
.end method

.method private deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v2, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v1

    .line 117
    :try_start_2
    iget-object v1, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 118
    :catch_1
    move-exception v1

    .line 120
    :try_start_4
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v1}, Lcom/igaworks/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 121
    :catch_2
    move-exception v0

    .line 122
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Lcom/igaworks/gson/JsonSyntaxException;

    invoke-direct {v1, p1, v0}, Lcom/igaworks/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
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
    .line 40
    invoke-virtual {p0, p1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;->read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/igaworks/gson/stream/JsonReader;)Ljava/util/Date;
    .locals 4
    .param p1, "in"    # Lcom/igaworks/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->peek()Lcom/igaworks/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/igaworks/gson/stream/JsonToken;->STRING:Lcom/igaworks/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 96
    new-instance v1, Lcom/igaworks/gson/JsonParseException;

    const-string v2, "The date should be a string value"

    invoke-direct {v1, v2}, Lcom/igaworks/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/igaworks/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/igaworks/gson/DefaultDateTypeAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 99
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    const-class v2, Ljava/util/Date;

    if-ne v1, v2, :cond_1

    .line 104
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object v0

    .line 101
    .restart local v0    # "date":Ljava/util/Date;
    :cond_1
    iget-object v1, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    const-class v2, Ljava/sql/Timestamp;

    if-ne v1, v2, :cond_2

    .line 102
    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->dateType:Ljava/lang/Class;

    const-class v2, Ljava/sql/Date;

    if-ne v1, v2, :cond_3

    .line 104
    new-instance v1, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 107
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DefaultDateTypeAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/igaworks/gson/DefaultDateTypeAdapter;->write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public write(Lcom/igaworks/gson/stream/JsonWriter;Ljava/util/Date;)V
    .locals 3
    .param p1, "out"    # Lcom/igaworks/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v2, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->localFormat:Ljava/text/DateFormat;

    monitor-enter v2

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/igaworks/gson/DefaultDateTypeAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "dateFormatAsString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/igaworks/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/igaworks/gson/stream/JsonWriter;

    .line 90
    monitor-exit v2

    .line 91
    return-void

    .line 90
    .end local v0    # "dateFormatAsString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
