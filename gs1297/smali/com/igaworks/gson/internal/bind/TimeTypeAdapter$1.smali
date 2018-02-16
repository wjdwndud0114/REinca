.class final Lcom/igaworks/gson/internal/bind/TimeTypeAdapter$1;
.super Ljava/lang/Object;
.source "TimeTypeAdapter.java"

# interfaces
.implements Lcom/igaworks/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/TimeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;
    .locals 2
    .param p1, "gson"    # Lcom/igaworks/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/Gson;",
            "Lcom/igaworks/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/igaworks/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/igaworks/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Time;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/igaworks/gson/internal/bind/TimeTypeAdapter;

    invoke-direct {v0}, Lcom/igaworks/gson/internal/bind/TimeTypeAdapter;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
