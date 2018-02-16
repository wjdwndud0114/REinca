.class Lcom/igaworks/gson/internal/ConstructorConstructor$2;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lcom/igaworks/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/gson/internal/ConstructorConstructor;->get(Lcom/igaworks/gson/reflect/TypeToken;)Lcom/igaworks/gson/internal/ObjectConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/igaworks/gson/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/gson/internal/ConstructorConstructor;

.field final synthetic val$rawTypeCreator:Lcom/igaworks/gson/InstanceCreator;

.field final synthetic val$type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/igaworks/gson/internal/ConstructorConstructor;Lcom/igaworks/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/gson/internal/ConstructorConstructor;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/igaworks/gson/internal/ConstructorConstructor$2;->this$0:Lcom/igaworks/gson/internal/ConstructorConstructor;

    iput-object p2, p0, Lcom/igaworks/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lcom/igaworks/gson/InstanceCreator;

    iput-object p3, p0, Lcom/igaworks/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/igaworks/gson/internal/ConstructorConstructor$2;->val$rawTypeCreator:Lcom/igaworks/gson/InstanceCreator;

    iget-object v1, p0, Lcom/igaworks/gson/internal/ConstructorConstructor$2;->val$type:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/igaworks/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
