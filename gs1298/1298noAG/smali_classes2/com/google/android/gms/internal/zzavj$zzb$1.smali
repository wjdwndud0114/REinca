.class Lcom/google/android/gms/internal/zzavj$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaaz$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzavj$zzb;->onMessageReceived(Ljava/lang/String;[BZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzaaz$zzc",
        "<",
        "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbwW:Ljava/lang/String;

.field final synthetic zzbwX:[B

.field final synthetic zzbwY:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavj$zzb;Ljava/lang/String;[BZ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzavj$zzb$1;->zzbwW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzavj$zzb$1;->zzbwX:[B

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzavj$zzb$1;->zzbwY:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavj$zzb$1;->zzbwW:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavj$zzb$1;->zzbwX:[B

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzavj$zzb$1;->zzbwY:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;->onMessageReceived(Ljava/lang/String;[BZ)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/connection/Connections$MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzavj$zzb$1;->zza(Lcom/google/android/gms/nearby/connection/Connections$MessageListener;)V

    return-void
.end method

.method public zzvy()V
    .locals 0

    return-void
.end method
