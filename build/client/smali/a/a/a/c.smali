.class public final La/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/c$a;
    }
.end annotation


# instance fields
.field public final a:La/y;

.field public final b:La/w;


# direct methods
.method private constructor <init>(La/w;La/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/c;->b:La/w;

    iput-object p2, p0, La/a/a/c;->a:La/y;

    return-void
.end method

.method synthetic constructor <init>(La/w;La/y;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/a/a/c;-><init>(La/w;La/y;)V

    return-void
.end method

.method public static a(La/y;La/w;)Z
    .locals 2

    invoke-virtual {p0}, La/y;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, La/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, La/y;->b()La/d;

    move-result-object v0

    invoke-virtual {v0}, La/d;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, La/y;->b()La/d;

    move-result-object v0

    invoke-virtual {v0}, La/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, La/y;->b()La/d;

    move-result-object v0

    invoke-virtual {v0}, La/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    :sswitch_1
    invoke-virtual {p0}, La/y;->b()La/d;

    move-result-object v0

    invoke-virtual {v0}, La/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, La/w;->b()La/d;

    move-result-object v0

    invoke-virtual {v0}, La/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
