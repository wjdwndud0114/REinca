.class Lcom/google/android/gms/nearby/messages/internal/zzx$zzc$1;
.super Lcom/google/android/gms/nearby/messages/internal/zzx$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/nearby/messages/internal/zzx$zzc;->zzI(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzx$zzd",
        "<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbyK:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzx$zzc;Ljava/util/List;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzc$1;->zzbyK:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzd;-><init>(Lcom/google/android/gms/nearby/messages/internal/zzx$1;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/nearby/messages/MessageListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzx$zzc$1;->zzbyK:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzy;->zza(Ljava/lang/Iterable;Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method

.method public synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/nearby/messages/MessageListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzx$zzc$1;->zza(Lcom/google/android/gms/nearby/messages/MessageListener;)V

    return-void
.end method
