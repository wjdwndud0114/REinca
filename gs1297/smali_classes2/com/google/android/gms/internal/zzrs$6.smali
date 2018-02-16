.class Lcom/google/android/gms/internal/zzrs$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzso;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzacH:Lcom/google/android/gms/internal/zzrs;

.field final synthetic zzacM:Lcom/google/android/gms/internal/zzso;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzrs;Lcom/google/android/gms/internal/zzso;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrs$6;->zzacH:Lcom/google/android/gms/internal/zzrs;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrs$6;->zzacM:Lcom/google/android/gms/internal/zzso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrs$6;->zzacH:Lcom/google/android/gms/internal/zzrs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrs;->zza(Lcom/google/android/gms/internal/zzrs;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrs$6;->zzacM:Lcom/google/android/gms/internal/zzso;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsc;->zzb(Lcom/google/android/gms/internal/zzso;)V

    return-void
.end method
