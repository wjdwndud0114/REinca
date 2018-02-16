.class Lnet/supercat/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field public name:Ljava/lang/String;

.field public seek_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "seek_value"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lnet/supercat/Property;->name:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lnet/supercat/Property;->seek_value:Ljava/lang/String;

    .line 13
    return-void
.end method
