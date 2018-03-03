.class public final Lcom/google/android/gms/internal/zzdu;
.super Lcom/google/android/gms/internal/zzek$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private final zzyD:Lcom/google/android/gms/internal/zzdt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzdt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzek$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdu;->zzyD:Lcom/google/android/gms/internal/zzdt;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdu;->zzyD:Lcom/google/android/gms/internal/zzdt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdt;->onAdClicked()V

    return-void
.end method
