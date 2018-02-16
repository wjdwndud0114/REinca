.class Lcom/google/android/gms/internal/zzmf$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqi$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmf;->zzit()Ljava/lang/Void;
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
        "Lcom/google/android/gms/internal/zzmh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzQX:Lcom/google/android/gms/internal/zzmq;

.field final synthetic zzQY:Lcom/google/android/gms/internal/zzmf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmf;Lcom/google/android/gms/internal/zzmq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmf$1;->zzQY:Lcom/google/android/gms/internal/zzmf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmf$1;->zzQX:Lcom/google/android/gms/internal/zzmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzc(Lcom/google/android/gms/internal/zzmh;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmf$1;->zzQY:Lcom/google/android/gms/internal/zzmf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmf$1;->zzQX:Lcom/google/android/gms/internal/zzmq;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzmf;->zza(Lcom/google/android/gms/internal/zzmq;Lcom/google/android/gms/internal/zzmh;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmf$1;->zzQY:Lcom/google/android/gms/internal/zzmf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmf;->zziY()V

    :cond_0
    return-void
.end method

.method public synthetic zzd(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzmh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmf$1;->zzc(Lcom/google/android/gms/internal/zzmh;)V

    return-void
.end method
