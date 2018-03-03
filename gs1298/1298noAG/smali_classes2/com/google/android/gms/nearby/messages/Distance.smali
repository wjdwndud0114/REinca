.class public interface abstract Lcom/google/android/gms/nearby/messages/Distance;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/Distance$Accuracy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/nearby/messages/Distance;",
        ">;"
    }
.end annotation


# static fields
.field public static final UNKNOWN:Lcom/google/android/gms/nearby/messages/Distance;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zze;

    const/4 v1, 0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/nearby/messages/internal/zze;-><init>(ID)V

    sput-object v0, Lcom/google/android/gms/nearby/messages/Distance;->UNKNOWN:Lcom/google/android/gms/nearby/messages/Distance;

    return-void
.end method


# virtual methods
.method public abstract compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I
    .param p1    # Lcom/google/android/gms/nearby/messages/Distance;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getAccuracy()I
.end method

.method public abstract getMeters()D
.end method
