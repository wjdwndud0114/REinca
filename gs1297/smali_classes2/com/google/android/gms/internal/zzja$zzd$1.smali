.class Lcom/google/android/gms/internal/zzja$zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzja$zzd;->zzgw()Lcom/google/android/gms/internal/zzja$zzc;
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
        "Lcom/google/android/gms/internal/zzix;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzJz:Lcom/google/android/gms/internal/zzja$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzja$zzd;Lcom/google/android/gms/internal/zzja$zzc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzja$zzd$1;->zzJz:Lcom/google/android/gms/internal/zzja$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzix;)V
    .locals 2

    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpe;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja$zzd$1;->zzJz:Lcom/google/android/gms/internal/zzja$zzc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzix;->zzgt()Lcom/google/android/gms/internal/zzjc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzja$zzc;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzix;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzja$zzd$1;->zza(Lcom/google/android/gms/internal/zzix;)V

    return-void
.end method
