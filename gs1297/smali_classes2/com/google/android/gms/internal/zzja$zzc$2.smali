.class Lcom/google/android/gms/internal/zzja$zzc$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzja$zzc;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzqi$zzc",
        "<",
        "Lcom/google/android/gms/internal/zzjb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJw:Lcom/google/android/gms/internal/zzja$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzja$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja$zzc$2;->zzJw:Lcom/google/android/gms/internal/zzja$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzjb;)V
    .locals 1

    const-string v0, "Releasing engine reference."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzc$2;->zzJw:Lcom/google/android/gms/internal/zzja$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzja$zzc;->zza(Lcom/google/android/gms/internal/zzja$zzc;)Lcom/google/android/gms/internal/zzja$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja$zzd;->zzgx()V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzjb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzja$zzc$2;->zzb(Lcom/google/android/gms/internal/zzjb;)V

    return-void
.end method
