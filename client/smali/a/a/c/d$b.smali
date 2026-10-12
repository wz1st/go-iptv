.class public abstract La/a/c/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final j:La/a/c/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/a/c/v;

    invoke-direct {v0}, La/a/c/v;-><init>()V

    sput-object v0, La/a/c/d$b;->j:La/a/c/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/a/c/d;)V
    .locals 0

    return-void
.end method

.method public abstract a(La/a/c/e;)V
.end method
