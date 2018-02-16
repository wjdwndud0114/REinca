.class final Lcom/igaworks/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/igaworks/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/gson/internal/bind/TypeAdapters;->newFactory(Lcom/igaworks/gson/reflect/TypeToken;Lcom/igaworks/gson/TypeAdapter;)Lcom/igaworks/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/igaworks/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/igaworks/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/igaworks/gson/reflect/TypeToken;Lcom/igaworks/gson/TypeAdapter;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/igaworks/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/igaworks/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/igaworks/gson/Gson;Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/TypeAdapter;
    .locals 1
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
    .line 826
    .local p2, "typeToken":Lcom/igaworks/gson/reflect/TypeToken;, "Lcom/igaworks/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/igaworks/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/igaworks/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/igaworks/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
