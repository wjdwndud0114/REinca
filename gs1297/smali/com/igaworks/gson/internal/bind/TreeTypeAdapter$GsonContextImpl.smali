.class final Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/igaworks/gson/JsonSerializationContext;
.implements Lcom/igaworks/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GsonContextImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;


# direct methods
.method private constructor <init>(Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;)V
    .locals 0

    .prologue
    .line 153
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iput-object p1, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;
    .param p2, "x1"    # Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$1;

    .prologue
    .line 153
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    invoke-direct {p0, p1}, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Lcom/igaworks/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/igaworks/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/igaworks/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/igaworks/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/gson/Gson;->fromJson(Lcom/igaworks/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 155
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/igaworks/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/igaworks/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/igaworks/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 158
    .local p0, "this":Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;, "Lcom/igaworks/gson/internal/bind/TreeTypeAdapter<TT;>.GsonContextImpl;"
    iget-object v0, p0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;->this$0:Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;

    iget-object v0, v0, Lcom/igaworks/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/igaworks/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/igaworks/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/igaworks/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
