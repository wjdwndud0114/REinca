.class public Lcom/google/android/gms/internal/zzoh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzmb;
.end annotation


# instance fields
.field private final zzKt:Lcom/google/android/gms/internal/zzjt;

.field private final zzVh:Lcom/google/android/gms/internal/zzoe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjt;Lcom/google/android/gms/internal/zzod;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzoh;->zzKt:Lcom/google/android/gms/internal/zzjt;

    new-instance v0, Lcom/google/android/gms/internal/zzoe;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzoe;-><init>(Lcom/google/android/gms/internal/zzod;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzoh;->zzVh:Lcom/google/android/gms/internal/zzoe;

    return-void
.end method


# virtual methods
.method public zzjw()Lcom/google/android/gms/internal/zzjt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoh;->zzKt:Lcom/google/android/gms/internal/zzjt;

    return-object v0
.end method

.method public zzjx()Lcom/google/android/gms/internal/zzoe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzoh;->zzVh:Lcom/google/android/gms/internal/zzoe;

    return-object v0
.end method
