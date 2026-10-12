.class final La/a/d/d$a;
.super Lb/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:La/a/d/d;


# direct methods
.method public constructor <init>(La/a/d/d;Lb/m;)V
    .locals 0

    iput-object p1, p0, La/a/d/d$a;->a:La/a/d/d;

    invoke-direct {p0, p2}, Lb/g;-><init>(Lb/m;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, La/a/d/d$a;->a:La/a/d/d;

    invoke-static {v0}, La/a/d/d;->a(La/a/d/d;)La/a/b/g;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, La/a/d/d$a;->a:La/a/d/d;

    invoke-virtual {v0, v1, v2}, La/a/b/g;->a(ZLa/a/d/h;)V

    invoke-super {p0}, Lb/g;->close()V

    return-void
.end method
