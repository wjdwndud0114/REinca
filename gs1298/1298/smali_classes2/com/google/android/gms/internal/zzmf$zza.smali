.class public final Lcom/google/android/gms/internal/zzmf$zza;
.super Lcom/google/android/gms/internal/zzmf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/zzqi",
            "<",
            "Lcom/google/android/gms/internal/zzmh;",
            ">;",
            "Lcom/google/android/gms/internal/zzme$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzmf;-><init>(Lcom/google/android/gms/internal/zzqi;Lcom/google/android/gms/internal/zzme$zza;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmf$zza;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zziY()V
    .locals 0

    return-void
.end method

.method public zziZ()Lcom/google/android/gms/internal/zzmq;
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/zzfq;

    sget-object v0, Lcom/google/android/gms/internal/zzfx;->zzAR:Lcom/google/android/gms/internal/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzft;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzfq;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmf$zza;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/zzmy;->zzjf()Lcom/google/android/gms/internal/zzmy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzmz;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzmy;)Lcom/google/android/gms/internal/zzmz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zziw()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzmf;->zzit()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
