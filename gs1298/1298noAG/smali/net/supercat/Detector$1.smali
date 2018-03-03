.class Lnet/supercat/Detector$1;
.super Ljava/lang/Object;
.source "Detector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/supercat/Detector;->detect(Lnet/supercat/Detector$OnEmulatorDetectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/supercat/Detector;

.field final synthetic val$pOnEmulatorDetectorListener:Lnet/supercat/Detector$OnEmulatorDetectorListener;


# direct methods
.method constructor <init>(Lnet/supercat/Detector;Lnet/supercat/Detector$OnEmulatorDetectorListener;)V
    .locals 0
    .param p1, "this$0"    # Lnet/supercat/Detector;

    .prologue
    .line 185
    iput-object p1, p0, Lnet/supercat/Detector$1;->this$0:Lnet/supercat/Detector;

    iput-object p2, p0, Lnet/supercat/Detector$1;->val$pOnEmulatorDetectorListener:Lnet/supercat/Detector$OnEmulatorDetectorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    iget-object v1, p0, Lnet/supercat/Detector$1;->this$0:Lnet/supercat/Detector;

    # invokes: Lnet/supercat/Detector;->detect()Z
    invoke-static {v1}, Lnet/supercat/Detector;->access$000(Lnet/supercat/Detector;)Z

    move-result v0

    .line 189
    .local v0, "isEmulator":Z
    iget-object v1, p0, Lnet/supercat/Detector$1;->this$0:Lnet/supercat/Detector;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This System is Emulator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lnet/supercat/Detector;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lnet/supercat/Detector;->access$100(Lnet/supercat/Detector;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lnet/supercat/Detector$1;->val$pOnEmulatorDetectorListener:Lnet/supercat/Detector$OnEmulatorDetectorListener;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lnet/supercat/Detector$1;->val$pOnEmulatorDetectorListener:Lnet/supercat/Detector$OnEmulatorDetectorListener;

    invoke-interface {v1, v0}, Lnet/supercat/Detector$OnEmulatorDetectorListener;->onResult(Z)V

    .line 193
    :cond_0
    return-void
.end method
