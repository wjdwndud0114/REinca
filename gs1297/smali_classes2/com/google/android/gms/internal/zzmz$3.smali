.class final Lcom/google/android/gms/internal/zzmz$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmz;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzja;Lcom/google/android/gms/internal/zzfq;Lcom/google/android/gms/internal/zzmy;Lcom/google/android/gms/internal/zzmh;)Lcom/google/android/gms/internal/zzmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzSW:Lcom/google/android/gms/internal/zzmy;

.field final synthetic zzSX:Lcom/google/android/gms/internal/zzmh;

.field final synthetic zzSZ:Lcom/google/android/gms/internal/zznb;

.field final synthetic zztd:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmy;Landroid/content/Context;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmz$3;->zzSW:Lcom/google/android/gms/internal/zzmy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmz$3;->zztd:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzmz$3;->zzSZ:Lcom/google/android/gms/internal/zznb;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzmz$3;->zzSX:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmz$3;->zzSW:Lcom/google/android/gms/internal/zzmy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzmy;->zzSM:Lcom/google/android/gms/internal/zznh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmz$3;->zztd:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmz$3;->zzSZ:Lcom/google/android/gms/internal/zznb;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzmz$3;->zzSX:Lcom/google/android/gms/internal/zzmh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzmh;->zzvf:Lcom/google/android/gms/internal/zzqa;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zznh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzqa;)V

    return-void
.end method
