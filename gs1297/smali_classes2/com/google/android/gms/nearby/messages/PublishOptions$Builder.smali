.class public Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/messages/PublishOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbxC:Lcom/google/android/gms/nearby/messages/Strategy;

.field private zzbxD:Lcom/google/android/gms/nearby/messages/PublishCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/nearby/messages/Strategy;->DEFAULT:Lcom/google/android/gms/nearby/messages/Strategy;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;->zzbxC:Lcom/google/android/gms/nearby/messages/Strategy;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/messages/PublishOptions;
    .locals 4

    new-instance v0, Lcom/google/android/gms/nearby/messages/PublishOptions;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;->zzbxC:Lcom/google/android/gms/nearby/messages/Strategy;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;->zzbxD:Lcom/google/android/gms/nearby/messages/PublishCallback;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/nearby/messages/PublishOptions;-><init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/PublishCallback;Lcom/google/android/gms/nearby/messages/PublishOptions$1;)V

    return-object v0
.end method

.method public setCallback(Lcom/google/android/gms/nearby/messages/PublishCallback;)Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/PublishCallback;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;->zzbxD:Lcom/google/android/gms/nearby/messages/PublishCallback;

    return-object p0
.end method

.method public setStrategy(Lcom/google/android/gms/nearby/messages/Strategy;)Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/Strategy;

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;->zzbxC:Lcom/google/android/gms/nearby/messages/Strategy;

    return-object p0
.end method
