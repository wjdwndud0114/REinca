.class Lcom/igaworks/impl/CommonFrameworkImpl$5;
.super Ljava/lang/Object;
.source "CommonFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/impl/CommonFrameworkImpl;->setGender(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

.field final synthetic val$gender:I


# direct methods
.method constructor <init>(Lcom/igaworks/impl/CommonFrameworkImpl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/igaworks/impl/CommonFrameworkImpl;

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$5;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iput p2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$5;->val$gender:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl$5;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    const-string v1, "gender"

    iget v2, p0, Lcom/igaworks/impl/CommonFrameworkImpl$5;->val$gender:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/igaworks/impl/CommonFrameworkImpl;->save_demographic(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/igaworks/impl/CommonFrameworkImpl$5;->this$0:Lcom/igaworks/impl/CommonFrameworkImpl;

    iget v1, p0, Lcom/igaworks/impl/CommonFrameworkImpl$5;->val$gender:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/igaworks/impl/CommonFrameworkImpl;->setGenderAdpopcorn(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/igaworks/impl/CommonFrameworkImpl;->access$100(Lcom/igaworks/impl/CommonFrameworkImpl;Ljava/lang/String;)V

    .line 1069
    return-void
.end method
