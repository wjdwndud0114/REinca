.class Lcom/google/android/gms/internal/zziq$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zziq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zziq$2;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic zzIn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziq$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zziq$2$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziq$2$1;->zzIn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzir;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzIt:Lcom/google/android/gms/internal/zzer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzIt:Lcom/google/android/gms/internal/zzer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziq$2$1;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziq$2$1;->zzIn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzer;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
