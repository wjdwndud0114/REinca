.class public final Lcom/google/android/gms/nearby/messages/PublishOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/nearby/messages/PublishOptions;


# instance fields
.field private final zzbxC:Lcom/google/android/gms/nearby/messages/Strategy;

.field private final zzbxD:Lcom/google/android/gms/nearby/messages/PublishCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/PublishOptions$Builder;->build()Lcom/google/android/gms/nearby/messages/PublishOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/PublishOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/PublishOptions;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/PublishCallback;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/nearby/messages/PublishCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/PublishOptions;->zzbxC:Lcom/google/android/gms/nearby/messages/Strategy;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/PublishOptions;->zzbxD:Lcom/google/android/gms/nearby/messages/PublishCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/PublishCallback;Lcom/google/android/gms/nearby/messages/PublishOptions$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/PublishOptions;-><init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/PublishCallback;)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/google/android/gms/nearby/messages/PublishCallback;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/PublishOptions;->zzbxD:Lcom/google/android/gms/nearby/messages/PublishCallback;

    return-object v0
.end method

.method public getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/PublishOptions;->zzbxC:Lcom/google/android/gms/nearby/messages/Strategy;

    return-object v0
.end method
